getgenv().Credit = 'Ticxyy Stand Rewrite By ticxyylolz#9164' --Dont Change This Or The Script Not Working.
getgenv().Owner = 'CleanedByxZyn' --Username of owners.

getgenv().Settings = {
    --// ! Main ! \\--
    ['Position'] = 'Right', --Position Of Stand [Back | Left | Right]
    ['CrewID'] = 32570691, --Must Be In Group For It To Work
    ['Attack'] = 'Heavy', --Heavy = Super Punch Light = Spam Punch [Heavy | Light]
    ['StandMode'] = 'Star Platinum : OverHeaven', --[Star Platinum : OverHeaven | Star Platinum: The World | Star Platinum, Za Warudo! | TheWorld | Cmoon | King Crimson | Killer Queen | MIH | D4C]
    ['FlyMode'] = 'Heaven', --[Glide | Fly | Hover | Heaven]
    ['Prediction'] = 0.3, --Prediction For Attack Or Targetting
    ['GunPrediction'] = 0.17, --Prediction For Gun Kill
    ['AttackMode'] = 'Under', --[Sky | Under] If [Sky] The Stand Will Attack Infront Of Then And If [Under] The Stand Will Attack In Underground
    ['GunMode'] = 'Under', --[Sky | Under]  The Stand Will Shooting Just Like What In The Settings
    ['Resolver'] = false, --[true | false] Turn On Or Off Resolver If Someone Using Anti Lock
    --// ! Misc ! \\--
    ['LowGraphics'] = true, --[true | false] Turns graphics down so your stand doesnt lag too much
    ['AntiStomp'] = true, --[true | false] The Stand Will Cannot Be Stomped Or Grabbed
    ['CustomName'] = 'Master', --Custom Name Text Default Is [Master] Example Of it 'Im Here, Master!'
    ['Smoothing'] = 'Classic', --[Classic | Smooth] If [Classic] Less Delays And if [Smooth] The Stand Movement Will Smooth But Kinda Delayed
    ['Hidescreen'] = true, --[true | false] If [true] You WIll See White Blank Screen But The Performance Is Gonna Be Good]
    ['SummonPose'] = false, --When You Summmon The Stand It Will Posing
    ['Posing'] = 'Pose1', --[Pose1 | Pose2 | Pose3] Poses
    ['ChatCmds'] = true, --[true | false] Chatted When You Use Some Command
    ['AutoMask'] = true, --[true | false] Auto Buy Mask When The Stand Respawn
    ['FPSCAP'] = 20, --This is so your main account gets the most fps (MAXED IS 60, SUGGEST 30 FPS ON STANDS)
    ['Mask'] = 'Skull', --[Surgeon | Paintball | Skull | Pumpkin | Hockey | Ninja | Riot] The Stand Will Buy The Mask You Selected
    ['Msg'] = 'Yare Yare Daze.', --When You Say [/e msg] It Makes All The Alts Say That Message
    --//    ! Sounds !     \\--
    --\\ MUST HAVE BOOMBOX //--
    ['Sounds'] = false, --[true | false] Sounds when you use some commands like Mimic! Or Summon! The Stand And Etc
    ['SummonMusic'] = false, --[true | false]
    ['VanishAppearSound'] = false, --[true | false]
    ['CustomSong'] = 7083210943 --Enter A Song ID And Say 'Song!'

}
loadstring(game:HttpGet('https://ticxyylos.github.io/Stand/RewriteV1.1'))()
