$Groupname = Read-Host -Prompt "Please enter the group name: "
Get-ADGroupMember -Identity $Groupname  | ft -Property SamAccountName > $env:TEMP\$groupname.txt
start $env:windir\system32\notepad.exe $env:TEMP\$groupname.txt