local function ChangeUser(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Rio = DevRio:get("tarkasTeam:User"..result.id_)
if not result.username_ then 
if Rio then 
Dev_Rio(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذا معرفه @"..Rio.."", 1, 'html')
DevRio:del("tarkasTeam:User"..result.id_) 
end
end
if result.username_ then 
if Rio and Rio ~= result.username_ then 
local Rio_text = {
'معرفك الجديد عشره بربع محد ياخذه😹💔',
"هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
"معرفك الجديد حلو منين خامطه؟!🤤♥️",
"معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
Rios = math.random(#Rio_text)
Dev_Rio(msg.chat_id_, msg.id_, 1, Rio_text[Rios], 1, 'html')
end  
DevRio:set("tarkasTeam:User"..result.id_, result.username_) 
end
end
end,nil) 
end
end

end
return {
tarkas = ChangeUser
}