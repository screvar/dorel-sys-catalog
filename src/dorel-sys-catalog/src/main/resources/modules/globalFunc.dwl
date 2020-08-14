%dw 2.0
import * from dw::Runtime


fun getXrefValues(entityId: String, source: String, value: String) =
using(result = Mule::lookup('get-xref-values', {
	entityId: entityId,
	source: source,
	value: value
}, 30000))
if(result.status != "Failed") result else fail(result.message)

fun getTargetXrefValue(entityId: String, source: String, value: String, target: String) =
using(result = Mule::lookup('get-target-xref-value', {
	entityId: entityId,
	source: source,
	value: value,
	target: target
}, 30000))
if(result is String) result else fail(result.message)