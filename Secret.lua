local ReplaceOnFail = false
-- StopMessageOnFail must be false, Replaces message if message is tagged.
local StopMessageOnFail = false
-- ReplaceOnFail must be false, stops message from being sent if message is tagged.

-- Message for daddysyn:
-- Remove line 6, line 7, line 8 and line 229.
-- Add me in credits if you want.

local words = {
    ["ass"] = "as{{aieixzvzx:s}}",
    ["asshole"] = "as{{aieixzvzx:shole}}",
    ["deadass"] = "dead as{{aieixzvzx:s}}",
    ["arse"] = "ar{{aieixzvzx:se}}", --NEW
    ["arsehead"] = "ar{{aieixzvzx:se}}head", --NEW
    ["arsehole"] = "ar{{aieixzvzx:se}}hole", --NEW
    ["bitch"] = "bit{{aieixzvzx:ch}}",
    ["bitches"] = "bit{{aieixzvzx:ches}}",  
    ["cock"] = "co{{aieixzvzx:ck}}",
    ["cocks"] = "co{{aieixzvzx:cks}}",  
    ["cunt"] = "cu{{aieixzvzx:nt}}",
    ["dick"] = "di{{zczxczvz:ck}}",
    ["dickhead"] = "di{{zczxczvz:ckhead}}",
    ["dicks"] = "di{{zczxczvz:cks}}",  
    ["dyke"] = "dy{{aieixzvzx:ke}}",
    ["faggot"] = "fa{{aieixzvzx:ggot}}",
    ["faggots"] = "fa{{aieixzvzx:ggots}}",
    ["fuck"] = "fu{{aieixzvzx:ck}}",
    ["fucks"] = "fu{{aieixzvzx:cks}}",
    ["fucked"] = "fu{{aieixzvzx:cked}}",
    ["fucking"] = "fu{{aieixzvzx:ckign}}",
    ["fuckin"] = "fu{{aieixzvzx:ckign}}",
    ["gaylord"] = "gayl{{aieixzvzx:ord}}",
    ["gaylords"] = "gayl{{aieixzvzx:ords}}",  
    ["bastard"] = "bas{{aieixzvzx:tard}}",  --NEW
    ["bastards"] = "bas{{aieixzvzx:tards}}",  --NEW
    ["kike"] = "ki{{aieixzvzx:ke}}",
    ["kikes"] = "ki{{aieixzvzx:kes}}",  
    ["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
    ["brotherfucker"] = "brotherf{{aieixzvzx:ucker}}", --NEW
    ["fatherfucker"] = "fatherf{{aieixzvzx:ucker}}", --NEW
    ["bugger"] = "bugg{{aieixzvzx:er}}", --NEW
    ["buggers"] = "bugg{{aieixzvzx:er}}s", --NEW
    ["nigga"] = "ni{{aieixzvzx:gga}}",
    ["niggas"] = "ni{{aieixzvzx:ggas}}",
    ["nigger"] = "ni{{aieixzvzx:gger}}",
    ["niggers"] = "ni{{aieixzvzx:ggers}}",
    ["piss"] = "p{{aieixzvzx:iss}}", 
    ["pisses"] = "p{{aieixzvzx:isses}}",  
    ["pissing"] = "p{{aieixzvzx:is}}sing", --NEW
    ["pisser"] = "pi{{aieixzvzx:sser}}", --NEW
    ["penis"] = "pe{{aieixzvzx:nis}}",
    ["penisses"] = "pe{{aieixzvzx:nisses}}",  
    ["pussy"] = "pu{{aieixzvzx:ssy}}",
    ["shit"] = "sh{{aieixzvzx:it}}",
    ["shitter"] = "sh{{aieixzvzx:itter}}",  
    ["shitting"] = "sh{{aieixzvzx:itting}}",  
    ["shitty"] = "shi{{aieixzvzx:tty}}",
    ["horseshit"] = "horsesh{{aieixzvzx:it}}", --NEW
    ["jerk"] = "je{{aieixzvzx:rk}}", --NEW
    ["jerking"] = "jer{{aieixzvzx:king}}", --NEW
    ["slut"] = "sl{{aieixzvzx:ut}}",
    ["sluts"] = "sl{{aieixzvzx:uts}}",  
    ["whore"] = "who{{aieixzvzx:re}}",
    ["whores"] = "who{{aieixzvzx:res}}",  
    ["retard"] = "ret{{aieixzvzx:ard}}",
    ["retarded"] = "ret{{aieixzvzx:arded}}",
    ["kill"] = "ki{{aieixzvzx:ll}}",
    ["kills"] = "ki{{aieixzvzx:lls}}",  
    ["killing"] = "ki{{aieixzvzx:lling}}",  
    ["gay"] = "g{{aieixzvzx:ay}}",
    ["gays"] = "g{{aieixzvzx:ays}}",
    ["sex"] = "se{{aieixzvzx:x}}",
    ["sexy"] = "se{{aieixzvzx:xy}}",
    ["sexting"] = "se{{aieixzvzx:xting}}",
    ["porn"] = "po{{aieixzvzx:rn}}",
    ["love"] = "l{{aieixzvzx:ove}}",
    ["loves"] = "l{{aieixzvzx:oves}}",  
    ["lover"] = "l{{aieixzvzx:over}}",  
    ["loving"] = "l{{aieixzvzx:oving}}",  
    ["date"] = "da{{aieixzvzx:te}}",  
    ["dates"] = "da{{aieixzvzx:tes}}",  
    ["dating"] = "da{{aieixzvzx:ting}}",  
    ["dater"] = "da{{aieixzvzx:ter}}",  
    ["rape"] = "ra{{aieixzvzx:pe}}",
    ["raped"] = "rap{{aieixzvzx:ed}}",
    ["rapes"] = "ra{{aieixzvzx:pes}}",  
    ["raping"] = "rap{{aieixzvzx:ing}}",  
    ["raper"] = "ra{{aieixzvzx:per}}",  
    ["v3rm"] = "v3{{aieixzvzx:rm}}",
    ["v3rmillion"] = "v3{{aieixzvzx:rmillion}}",  
    ["hack"] = "ha{{aieixzvzx:ck}}",
    ["hacking"] = "hac{{aieixzvzx:king}}",  
    ["hacker"] = "hac{{aieixzvzx:ker}}",  
    ["hackers"] = "hac{{aieixzvzx:kers}}",  
    ["hot"] = "ho{{aieixzvzx:t}}",
    ["hotter"] = "ho{{aieixzvzx:tter}}",  
    ["boob"] = "bo{{aieixzvzx:ob}}",  
    ["boobs"] = "boo{{aieixzvzx:bs}}",
    ["tit"] = "t{{aieixzvzx:it}}", --NEW
    ["tits"] = "t{{aieixzvzx:its}}", --NEW
    ["thot"] = "th{{aieixzvzx:ot}}", --NEW
    ["thots"] = "th{{aieixzvzx:ots}}", --NEW
    ["thotting"] = "th{{aieixzvzx:otting}}", --NEW
    ["condom"] = "con{{aieixzvzx:dom}}",
    ["condoms"] = "con{{aieixzvzx:doms}}",  
    ["bang"] = "ban{{aieixzvzx:g}}",
    ["ligma"] = "li{{aieixzvzx:gma}}",
    ["ligmaballs"] = "ligm{{aieixzvzx:aballs}}",
    ["terrorist"] = "terror{{aieixzvzx:ist}}",
    ["terrorists"] = "terror{{aieixzvzx:ists}}",  
    ["horny"] = "horn{{aieixzvzx:y}}",
    ["mf"] = "m{{aieixzvzx:f}}",
    ["lmao"] = "lm{{aieixzvzx:ao}}",
    ["anus"] = "an{{aieixzvzx:us}}",
    ["hacks"] = "hac{{aieixzvzx:ks}}",
    ["predator"] = "pred{{aieixzvzx:ator}}",
    ["predators"] = "pred{{aieixzvzx:ator}}",  
    ["kiss"] = "ki{{aieixzvzx:ss}}",
    ["kisses"] = "ki{{aieixzvzx:sses}}",  
    ["kissing"] = "ki{{aieixzvzx:ssing}}",  
    ["kisser"] = "ki{{aieixzvzx:sser}}",  
    ["bomb"] = "bom{{aieixzvzx:b}}",
    ["nude"] = "nu{{aieixzvzx:de}}",
    ["nudes"] = "nu{{aieixzvzx:des}}",
    ["child"] = "chi{{aieixzvzx:ld}}",
    ["my"] = "m{{aieixzvzx:y}}",
    ["racism"] = "raci{{aieixzvzx:sm}}",
    ["hoe"] = "h{{aieixzvzx:oe}}",
    ["pedo"] = "pe{{aieixzvzx:do}}",
    ["nsfw"] = "ns{{aieixzvzx:fw}}",
    ["suck"] = "su{{aieixzvzx:ck}}",
    ["cum"] = "c{{aieixzvzx:um}}",
    ["cums"] = "c{{aieixzvzx:ums}}",
    ["cumming"] = "cu{{aieixzvzx:mming}}",
    ["cumload"] = "cu{{aieixzvzx:mload}}",
    ["creampie"] = "cre{{aieixzvzx:ampie}",
    ["scammer"] = "sca{{aieixzvzx:mmer}}",
    ["fucker"] = "fu{{aieixzvzx:cker}}",
    ["hitler"] = "hit{{aieixzvzx:ler}}",
    ["nazi"] = "na{{aieixzvzx:zi}}",
    ["simp"] = "si{{aieixzvzx:mp}}",
    ["simping"] = "sim{{aieixzvzx:ping}}",
    ["meth"] = "me{{aieixzvzx:th}}",
    ["cocaine"] = "co{{aieixzvzx:caine}}",
    ["heroin"] = "hero{{aieixzvzx:in}}",
    ["ballsack"] = "ba{{aieixzvzx:llsack}}",
    ["nutsack"] = "nu{{aieixzvzx:tsack}}",
    ["athiest"] = "athi{{aieixzvzx:est}}",
    ["jewish"] = "je{{aieixzvzx:wish}}",
    ["christian"] = "chri{{aieixzvzx:stian}}",
    ["muslim"] = "mu{{aieixzvzx:slim}}",
    ["jurdism"] = "jur{{aieixzvzx:dism}}",
    ["islam"] = "isl{{aieixzvzx:am}}",
    ["allah"] = "al{{aieixzvzx:lah}}",
    ["muhammad"] = "muha{{aieixzvzx:mmad}}",
    ["christianity"] = "chri{{aieixzvzx:stianity}}",
    ["satanism"] = "sata{{aieixzvzx:nism}}",
    ["twitter"] = "twi{{aieixzvzx:tter}}",
    ["youtube"] = "you{{aieixzvzx:tube}}",
    ["rumble"] = "rum{{aieixzvzx:ble}}",
    ["tiktok"] = "tik{{aieixzvzx:tok}}",
    ["facebook"] = "face{{aieixzvzx:book}}",
    ["whatsapp"] = "wha{{aieixzvzx:tsapp}}",
    ["discord"] = "disco{{aieixzvzx:rd}}",
    ["instagram"] = "inst{{aieixzvzx:agram}}",
    ["snapchat"] = "snap{{aieixzvzx:chat}}",

    -- ALL NEW

    ["wtf"] = "wt{{aieixzvzx:f}}",
    ["gtfo"] = "gt{{aieixzvzx:fo}}",
    ["kys"] = "k{{aieixzvzx:ys}}",
    ["omfg"] = "omf{{aieixzvzx:g}}",
    ["stfu"] = "st{{aieixzvzx:fu}}",
    ["ily"] = "il{{aieixzvzx:y}}",
    ["istg"] = "is{{aieixzvzx:tg}}",

    --[[
    ["and"] = "a{{aieixzvzx:nd}}",
    ["or"] = "o{{aieixzvzx:r}}",
    ["if"] = "i{{aieixzvzx:f}}",
    ["else"] = "el{{aieixzvzx:se}}",
    ["then"] = "th{{aieixzvzx:en}}",
    ["why"] = "wh{{aieixzvzx:y}}",
    ["what"] = "wha{{aieixzvzx:t}}",
    ["who"] = "wh{{aieixzvzx:o}}",
    ["where"] = "wh{{aieixzvzx:ere}}",
    ["see"] = "se{{aieixzvzx:e}}",
    ["do"] = "d{{aieixzvzx:o}}",
    ["to"] = "t{{aieixzvzx:o}}",
    ["of"] = "o{{aieixzvzx:f}}",
    ["he"] = "h{{aieixzvzx:e}}",
    ["she"] = "sh{{aieixzvzx:e}}",
    ["they"] = "th{{aieixzvzx:ey}}",
    ["them"] = "th{{aieixzvzx:em}}",
    ["had"] = "h{{aieixzvzx:add}}",
    ["for"] = "fo{{aieixzvzx:r}}",
    ["on"] = "o{{aieixzvzx:n}}",
    ["as"] = "a{{aieixzvzx:s}}",
    ["you"] = "yo{{aieixzvzx:u}}",
    ["my"] = "m{{aieixzvzx:y}}",
    ["yours"] = "you{{aieixzvzx:rs}}",
    ["not"] = "no{{aieixzvzx:t}}",
    ["with"] = "wi{{aieixzvzx:th}}",
    ["number"] = "numb{{aieixzvzx:er}}",
    ["numbers"] = "numb{{aieixzvzx:ers}}",
    ["day"] = "da{{aieixzvzx:y}}",
    ["night"] = "ni{{aieixzvzx:ght}}",
    ["get"] = "ge{{aieixzvzx:t}}",
    ["come"] = "co{{aieixzvzx:me}}",
    ["it"] = "i{{aieixzvzx:t}}",
    ["some"] = "so{{aieixzvzx:me}}",
    ["there"] = "the{{aieixzvzx:re}}",
    ["but"] = "bu{{aieixzvzx:t}}",
    ["more"] = "mo{{aieixzvzx:re}}",
    ["all"] = "a{{aieixzvzx:ll}}",
    ["get"] = "ge{{aieixzvzx:t}}",
    ["its"] = "i{{aieixzvzx:ts}}",
    ["yes"] = "ye{{aieixzvzx:s}}",
    ["no"] = "n{{aieixzvzx:o}}",
    ["so"] = "s{{aieixzvzx:o}}",
    ["said"] = "sa{{aieixzvzx:id}}",
    ["can"] = "ca{{aieixzvzx:n}}"

    ]]
}

local getrawmetatable, setreadonly, newcclosure, getnamecallmethod, method


local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNameCall = gmt.__namecall

gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "SayMessageRequest" and tostring(getnamecallmethod()) == "FireServer" then
        local msg = args[1]
        local msg2 = args[1]
        local split = string.split(msg, " ")
        local finalmsg = ""
        for _,word in next, split do
            for replaceable,replacing in next, words do
                if string.lower(word) == replaceable then
                    if string.upper(word) ~= word then
                        msg = string.gsub(msg, word, replacing)
                        finalmsg = msg.." "..method[1]
                        if game:GetService("TextService"):FilterStringAsync(finalmsg, game:GetService("Players").LocalPlayer.UserId) ~= finalmsg or (string.find(game:GetService("TextService"):FilterStringAsync(finalmsg, game:GetService("Players").LocalPlayer.UserId), "#") ~= nil and not string.find(msg2, "#")) then
                            num = 0
                            for _, _ in next, method do
                                num = num + 1
                            end
                            num2 = 0
                            for _, _method in next, method do
                                num2 = num2 + 1
                                if game:GetService("TextService"):FilterStringAsync(msg.." ".._method, game:GetService("Players").LocalPlayer.UserId) == finalmsg.." ".._method then
                                    finalmsg = msg.." ".._method
                                    break
                                else
                                    if num2 == num then
                                        -- notify message was tagged
                                        if ReplaceOnFail == true then
                                            finalmsg = "{AUTOMATIC}: Message was tagged."
                                        else
                                            finalmsg = string.rep("#", string.len(finalmsg))
                                        end
                                        if StopMessageOnFail == true then
                                            return wait(9e9)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        if finalmsg ~= "" then
            args[1] = finalmsg
        end
        return oldNameCall(self, unpack(args))
    end
    return oldNameCall(self, ...)
end)