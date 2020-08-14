%dw 2.0
//GLOBAL FUNCTIONs
fun formatDate(dateString: String)
				= dateString as Date {format:'yyyy-MM-dd'} as String {format:'MMM DD, YYYY'}
				
fun getTitle(gender: String)
			= if (gender == 'Male'or gender == 'M') 'Mr.' else if (gender == 'Female' or gender == 'F') 'Mrs.' else null

//GLOBAL VARIABLE
var civilStatus = [{SINGLE:'BLa BLa BVL'},{MARRIED:'Married'},{WIDOW:'Widow'}]