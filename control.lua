getgenv().LynixSettings = {
    --// ! Main ! \\--
    ['Owner'] = 'CleanedByNob0dy',
    ['Position'] = 'Alt', --Position Of Stand [Back | Left | Right]
    ['CrewID'] = 32570691, --Must Be In Group For It To Work
    ['StandMode'] = 'Star Platinum : OverHeaven', --[Star Platinum : OverHeaven | Star Platinum: The World | Star Platinum, Za Warudo! | TheWorld | Cmoon | King Crimson | Killer Queen | MIH | D4C]
    ['FlyMode'] = 'Fly', --[Glide | Fly | Hover | Heaven]
    ['Prediction'] = 0.34, --Prediction For Attack Or Targetting
    ['GunPrediction'] = 0.17, --Prediction For Gun Kill
    ['AttackMode'] = 'Under', --[Sky | Under] If [Sky] The Stand Will Attack Infront Of Then And If [Under] The Stand Will Attack In Underground
    ['GunMode'] = 'Under', --[Sky | Under]  The Stand Will Shooting Just Like What In The Settings
    ['Resolver'] = true, --[true | false] Turn On Or Off Resolver If Someone Using Anti Lock
    --// ! Misc ! \\--
    ['LowGraphics'] = true, --[true | false] Turns graphics down so your stand doesnt lag too much
    ['AntiStomp'] = true, --[true | false] The Stand Will Cannot Be Stomped Or Grabbed
    ['CustomName'] = 'Master', --Custom Name Text Default Is [Master] Example Of it 'Im Here, Master!'
    ['Hidescreen'] = true, --[true | false] If [true] You WIll See White Blank Screen But The Performance Is Gonna Be Good]
    ['ChatCmds'] = false, --[true | false] Chatted When You Use Some Command
    ['AutoMask'] = false, --[true | false] Auto Buy Mask When The Stand Respawn
    ['FPSCAP'] = false, --[false | This is so your main account gets the most fps (MAXED IS 60, SUGGEST 30 FPS ON STANDS)
    ['Msg'] = 'Yare Yare Daze.', --When You Say [/e msg] It Makes All The Alts Say That Message
    ['Alt'] = false,
    --//    ! Sounds !     \\--
    --\\ MUST HAVE BOOMBOX //--
    ['Sounds'] = true,
    ['SummonMusic'] = true, --[true | false]
    ['CustomSong'] = 6674053789 --Enter A Song ID And Say 'Song!'
} loadstring(game:HttpGet("https://lynixchan.github.io/STAND/Beta"))()
game:GetService('RunService'):BindToRenderStep("Reach", 0 , function(value)
                local success, err = pcall(function()
                    if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                    end)
                end)
