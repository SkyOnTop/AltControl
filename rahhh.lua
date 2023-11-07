getgenv().Credit = 'Made By Ticxyylolz#9164 | Ticxyy | discord.gg/ticxyy' --Dont Change This Or The Script Not Working.
getgenv().Owner = 'CleanedByxZyn'
getgenv().Settings = {
	--// ! Main ! \\--
	['Position'] = 'Alt', --// ! Position Of Stand [Back | Left | Right] ! \\--
	['CrewID'] = 32570691, --// ! Must Be In Group For It To Work https://www.roblox.com/groups/32570691/Ticxyy ! \\--
		--// ! Attack ! \\-- 
	['Attack'] = 'Heavy', --// ! Heavy = Super Punch Light = Spam Punch [Heavy | Light] ! \\--
	['PredictionValue'] = 0.35, --// ! Prediction For Attack Or Targetting ! \\--
	['GunKillPrediction'] = 0.17, --// ! Prediction For Gun Kill ! \\--
	['AttackMethod'] = 'Under', --// ! [Sky | Under] If [Sky] The Stand Will Attack Infront Of Then And If [Under] The Stand Will Attack In Underground ! \\--
	['GunMethod'] = 'Under', --// ! [Sky | Under]  The Stand Will Shooting Just Like What In The Settings ! \\--
	['Resolver'] = true, --// ! [true | false] Turn On Or Off Resolver If Someone Using Anti Lock ! \\--
	--// ! Antilock ! \\--
	['SkyAmount'] = 1600, --// ! Sky Velocity ! \\--
	--// ! Custom Cmd ! \\--
	['CustomSummon'] = 'Summon!', --// ! Custom [Summon!] Text ! \\--
	['CustomSave'] = 's', --// ! Custom [Save!] Text Use It When You Knocked ! \\--
	['CustomName'] = 'Master', --// ! Custom Name Text Default Is [Master] Example Of it 'Im Here, Master!' ! \\--
	--// ! Misc ! \\--
	['Smoothing'] = 'Classic', --// ! [Classic | Smooth] If [Classic] Less Delays And if [Smooth] The Stand Movement Will Smooth But Kinda Delayed ! \\--
	['Performance'] = true, --// ! [true | false] If [true] You WIll See White Blank Screen But The Performance Is Gonna Be Good ! \\--
	['SummonPose'] = false, --// ! When You Summmon The Stand It Will Posing ! \\--
	['Posing'] = 'Pose1', --// ! [Pose1 | Pose2 | Pose3] Poses ! \\--
	['ChatCmds'] = true, --// ! [true | false] Chatted When You Use Some Command ! \\--
	['AutoMask'] = true, --// ! [true | false] Auto Buy Mask When The Stand Respawn ! \\--
	['MaskMode'] = 'Skull', --// ! [Surgeon | Paintball | Skull | Pumpkin | Hockey | Ninja | Riot] The Stand Will Buy The Mask You Selected ! \\--
	['FlyModeAnim'] = 'Shazam', --// ! [Shazam | Bugged shazam | Glide | Hover] Stand Follow Animation ! \\--
	['FlyModeSpeed'] = 0.2, --// ! If Speed '0' It WIll Wierd I Suggest You Use Around '0.1 - 0.5' ! \\--
	['Msg'] = 'Yare Yare Daze.', --// ! When You Say [/e msg] It Makes All The Alts Say That Message ! \\--
	--//    ! Sounds !     \\--
	--\\ MUST HAVE BOOMBOX //--
	['Sounds'] = false, --// ! [true | false] Sounds when you use some commands like Mimic! Or Summon! The Stand And Etc ! \\--
	['SummonMusicStand'] = 'Star Platinum, Za Warudo!', --// ! [ Star Platinum : OverHeaven | Star Platinum, Za Warudo! | ZA WARUDO : OVER HEAVEN | C moon | King Crimson | Made In Heaven | D4C] ! \\--
	['SummonMusic'] = false, --// ! [true | false] ! \\--
	['VanishAppearSound'] = false, --// ! [true | false] ! \\--
	['VanishAppearMode'] = 'Star Platinum', --// ! [Star Platinum | King Crimson] ! \\--
	['CustomSong'] = 6853070044 --// ! Enter A Song ID And Say 'Song!' ! \\--
}
--//---------------------------------------------------------------------------------------------------------------\\-- Loadstring --//
loadstring(game:HttpGet('https://raw.githubusercontent.com/SkyOnTop/AltControl/main/old.lua'))()

local PERCENT_TO_BUY_ARMOR   = 30       --\\ percent of armor left that u want to buy

function announce(title,text,time)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = time;
    })
end
announce('Autobuying armor at %' .. tostring(PERCENT_TO_BUY_ARMOR), 'Enjoy!', 8)

local Player = game.Players.LocalPlayer
function Main1()
    while wait() do
        local function AutoArmor()
            local Origin = Player.Character.HumanoidRootPart.CFrame
            local Armor = Player.Character.BodyEffects.Armor
            if Armor.Value <= PERCENT_TO_BUY_ARMOR then
                repeat
                    wait()
		    Player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Ignored.Shop["High-Medium Armor] - $2163"].Head.CFrame)
                    fireclickdetector(game.Workspace.Ignored.Shop["[High-Medium Armor] - $2163"].ClickDetector)
                until Armor.Value == 130
                Player.Character.HumanoidRootPart.CFrame = Origin
            end
        end
        local s,e = pcall(AutoArmor)
    end
end
coroutine.resume(coroutine.create(Main1))
