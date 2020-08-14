%dw 2.0
import modules::myGlobalCustomFunctions as call
output application/json

---
payload.client map   {
	Title: call::getTitle($.Gender),
	Name: $.FirstName ++ " " ++ $.LastName,
	Address: $.Address ++ ", " ++ $.PostCode ++ ", " ++ $.City ++ "- "++ $.State,
	Phone: $.Phone,
	Birth: call::formatDate($.DateOfBirth),
	CivilStatus: call::civilStatus[0].SINGLE
}