function b()
local ChildDectactable, IsOver13, HasSaidMessage = true, false, false
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Chat"):WaitForChild("Frame"):WaitForChild("ChatChannelParentFrame"):WaitForChild("Frame_MessageLogDisplay"):WaitForChild("Scroller").ChildAdded:Connect(function(child)
    if ChildDectactable == true then
        if HasSaidMessage == true then
            child:WaitForChild("TextLabel")
            if tostring(child.Name) == "Frame" and child:FindFirstChild("TextLabel") and child:FindFirstChild("TextLabel"):FindFirstChild("TextButton") then
                local length = string.len(game:GetService("Players").LocalPlayer.DisplayName) + 10
                if string.find(child.TextLabel.TextButton.Text, game:GetService("Players").LocalPlayer.DisplayName) or string.find(child.TextLabel.TextButton.Text, game:GetService("Players").LocalPlayer.Name) then
                    -- Message found
                    local length2 = length + 34 - 9
                    local msg = string.sub(child.TextLabel.Text, length2, -1)
                    local msg2 = string.gsub(child.TextLabel.Text, " ", "")
                    if string.len(msg2) == 4 then
                        if msg2 == "####" then
                            -- Under 13
                            print("Success")
                            ChildDectactable = false
                            IsOver13 = false
                            child:Destroy()
                        else
                            if string.lower(msg2) == "c7rn" then
                                -- Over 13
                                print("Success")
                                ChildDectactable = false
                                IsOver13 = true
                                child:Destroy()
                            else
                                print("Wrong message")
                            end
                        end
                    else
                        -- Wrong Message Found
                        print("Wrong message ("..msg..")")
                    end
                else
                    -- Wrong Player Found
                    print("Wrong player")
                end
            else
                -- Invalid child (Probably starter message or system message.)
                print("Invalid Child (Instance.TextLabel instead of Instance.TextLabel.TextButton)")
            end
        end
    end
end)

game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
    if string.lower(msg) == "c7rn" then
        HasSaidMessage = true
        return nil
    end
end)

print("Loaded!")

wait(1)

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("C7RN", "All")
end
return b
