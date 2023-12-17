getgenv().Credit = 'Ticxyy stand, discord.gg/utFYVgpAqv' --Dont change this.

getgenv().Owner = 'CleanedByxZyn' --Username of owners.

getgenv().Settings = {
    --// ! Main ! \\--
    ['Position'] = 'Back', --Position Of Stand [Back | Left | Right]
    ['CrewID'] = 32570691, --Must Be In Group For It To Work
    ['Attack'] = 'Heavy', --Heavy = Super Punch Light = Spam Punch [Heavy | Light]
    ['StandMode'] = 'Star Platinum : OverHeaven', --[Star Platinum : OverHeaven | Star Platinum: The World | Star Platinum, Za Warudo! | TheWorld | Cmoon | King Crimson | Killer Queen | MIH | D4C]
    ['FlyMode'] = 'Heaven', --[Glide | Fly | Hover | Heaven]
    ['Prediction'] = 0.35, --Prediction For Attack Or Targetting
    ['GunPrediction'] = 0.17, --Prediction For Gun Kill
    ['AttackMode'] = 'Sky', --[Sky | Under] If [Sky] The Stand Will Attack Infront Of Then And If [Under] The Stand Will Attack In Underground
    ['GunMode'] = 'Under', --[Sky | Under]  The Stand Will Shooting Just Like What In The Settings
    ['Resolver'] = false, --[true | false] Turn On Or Off Resolver If Someone Using Anti Lock
    --// ! Misc ! \\--
    ['LowGraphics'] = true, --[true | false] Turns graphics down so your stand doesnt lag too much
    
    ['AntiStomp'] = true, --[true | false] The Stand Will Cannot Be Stomped Or Grabbed
    ['CustomName'] = 'Master', --Custom Name Text Default Is [Master] Example Of it 'Im Here, Master!'
    ['Hidescreen'] = true, --[true | false] If [true] You WIll See White Blank Screen But The Performance Is Gonna Be Good]
    ['ChatCmds'] = true, --[true | false] Chatted When You Use Some Command
    ['AutoMask'] = false, --[true | false] Auto Buy Mask When The Stand Respawn
    ['FPSCAP'] = false, --[false | This is so your main account gets the most fps (MAXED IS 60, SUGGEST 30 FPS ON STANDS)
    ['Msg'] = 'Yare Yare Daze.', --When You Say [/e msg] It Makes All The Alts Say That Message
    ['Alt'] = false,
    --//    ! Sounds !     \\--
    --\\ MUST HAVE BOOMBOX //--
    ['Sounds'] = true, --[true | false] Sounds when you use some commands like Mimic! Or Summon! The Stand And Etc
    ['SummonMusic'] = true, --[true | false]
    ['CustomSong'] = 7083210943 --Enter A Song ID And Say 'Song!'

}

if getgenv().Credit == 'Ticxyy stand, discord.gg/utFYVgpAqv' then
-- By ticxyylolz#9164
-- Script Name: Ticxyy stand
-- https://discord.gg/ticxyy
-- if you complain about horrible source please kys  
wait(0.1)
if not game['Loaded'] or not game:GetService("Players").LocalPlayer then
    game['Loaded']:Wait();
    game:WaitForChild(game:GetService("Players"));
    game:GetService("Players"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
end

game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-116,-58,146)
StandOwner = getgenv().Owner
Pos = getgenv().Settings.Position
CrewID = getgenv().Settings.CrewID
Attack = getgenv().Settings.Attack
StandMode = getgenv().Settings.StandMode
FlyMode = getgenv().Settings.FlyMode
Prediction = getgenv().Settings.Prediction
gunkillprediction = getgenv().Settings.GunPrediction
CustomName = getgenv().Settings.CustomName
AutoMask = getgenv().Settings.AutoMask
ChatCmds = getgenv().Settings.ChatCmds
AttackMode = getgenv().Settings.AttackMode
GunMode = getgenv().Settings.GunMode
SummonPose = getgenv().Settings.SummonPose
PosingType = getgenv().Settings.Posing
Hidescreen = getgenv().Settings.Hidescreen
Smoothing = getgenv().Settings.Smoothing
Sounds = getgenv().Settings.Sounds
SummonMusic = getgenv().Settings.SummonMusic
VanishAppear = getgenv().Settings.VanishAppearSound
CustomSong = getgenv().Settings.CustomSong
resolve = getgenv().Settings.Resolver
Bind = getgenv().Settings.AntiStomp
Fpscap = getgenv().Settings.FPSCAP
lowgraphics = getgenv().Settings.LowGraphics
Alt = getgenv().Settings.Alt
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyOnTop/AltControl/main/old.lua"))()
local Notify = NotifyLibrary.Notify
Notify({Title = "Wait 1 second [real]",Duration = 3.4028235e+38})
Wait(1)

local ScriptName = "Ticxyy Stand Rewrite V1.1"
if getgenv().StandLoaded ~= nil then
    Notify({Title = "Already Executed!",Duration = 5})
    Notify({Title = "Already Executed!",Duration = 5})
    Notify({Title = "Already Executed!",Duration = 5})
    Notify({Title = "Already Executed!",Duration = 5})
    return
end

STAND = game:GetService('Players'):FindFirstChild(game:GetService('Players').LocalPlayer.Name)
OWNER = game:GetService("Players"):FindFirstChild(StandOwner)
rs = game:GetService("RunService")

function getRoot(v)local rootPart = v.Character:FindFirstChild('HumanoidRootPart') return rootPart end
function getTorso(v)local Torso = v.Character:FindFirstChild('UpperTorso')return Torso end
function getHumanoid(v)local Humanoid = v.Character:FindFirstChildOfClass("Humanoid")return Humanoid end
function KO(v)local KOEffect = v.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O')return KOEffect end
function Dead(v)local DeadEffect = v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Dead')return DeadEffect end
function Attacking(v) local Attacks = v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Attacking') return Attacks end

if game:GetService("Players"):FindFirstChild(StandOwner) then
    Notify({Title = "Owner Found! ['Owner'] = '"..StandOwner.."'",Duration = 3.4028235e+38})
    getgenv().StandLoaded = true
else
    Notify({Title = "Owner Is Not In Server Or The User Invalid",Duration = 30})
    Notify({Title = "Please Check The User On Stand Setting",Duration = 30})
    Notify({Title = "And Try Re Execute!",Duration = 30})
    Notify({Title =  "['Owner'] = '"..StandOwner.."',",Duration = 30})
    return
end

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
newcclosure(
function(self, ...)
    local args = {...}
        if tostring(self) == "RemoteFunction" then return end
        if tostring(self) == "MainEvent" then
            if tostring(args[1]) == "DropMoney" or tostring(args[1]) == "TimerDecrease" or  tostring(args[1]) == "Grabbing" or tostring(args[1]) == "Block" or tostring(args[1]) == "Stomp" or tostring(args[1]) == "JoinCrew" or tostring(args[1]) == "LeaveCrew" or tostring(args[1]) == "PhoneCall" or tostring(args[1]) == "Boombox" or tostring(args[1]) == "BoomboxStop" or tostring(args[1]) == "EnterPromoCode" or tostring(args[1]) == "PurchaseSkinCrate" or tostring(args[1]) == "TimerMoney" or tostring(args[1]) == "Reload" or tostring(args[1]) == "UpdateMousePos" or tostring(args[1]) == "FireworkText" or tostring(args[1]) == "ChargeButton" or tostring(args[1]) == "ResetNew"  then
        else 
            return
        end 
        end
    return old(self, ...)
end)

local g
g = hookmetamethod(game, "__namecall", function(...)
local f = {
    ...
}
local c = f[1]
local a = getnamecallmethod()
local _ = getcallingscript()
if (a == "FireServer" and c == d and e(b, f[2])) then
    return
end
    if (not checkcaller() and getfenv(2).crash) then
        hookfunction(getfenv(2).crash, function()
            end)
        end
    return g(...)
end)

Notify({Title = "Da hood anticheat bypassed",Duration = 30})
Notify({Title = "Eh bypassed",Duration = 30})
local vu = game:GetService("VirtualUser") -- AntiAfk
STAND.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

if tonumber(Fpscap) then
    _G.FPS = Fpscap
    local clock = tick()
    
    _G.fps = true 
    rs.heartbeat:connect(function()
        if _G.fps == true then
            while clock + 1 / _G.FPS > tick() do end
            wait()
            clock = tick()
        end
    end)
end

for d, e in pairs(game.Workspace:GetDescendants()) do
    if e:IsA("Seat") then
        e:Destroy()
    end
end

local float = Instance.new("Part",game.Workspace)
float.Parent = game.Workspace
float.Name = "FLOATPART"
float.Transparency = 0
float.Anchored = true
float.Size = Vector3.new(6,1,6)

if lowgraphics == true then
    local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
    print("Low Graphics Enabled!")
end

--local
local SkyP = 0
local UnderP = -6.8
local delta = 0
local duration = 0.7
local StopHoverAnim = false
local Move = 0
local reversing = false
--locals for Attack!
local StudLimit = 75
local MainEvent = game:GetService("ReplicatedStorage").MainEvent

function Stop()
    getHumanoid(STAND):UnequipTools()
    StopHoverAnim = false
    follow = false
    looking = false
    noclip = false
    vanish = false
    bring = false
    Knocked = false
    Kills = false
    StompTarget = false
    circle = false
    Arrest = false
    Frame = false
    knifenear = false
    killnear = false
    Viewing = false
    barragepos = false
    barragepunch = false
    mimicpunch = false
    block = false
    mimic = false
    Fog = false
    UpFog = false
    WideFog = false
    FlatFog = false
    GunKnock = false
    GunStomp = false
    Strafe = false
    Locking = false
    ORA = false
    Stab = false
    Line = false
    Stabbing = false
    AutoWeight = false
    Annoy = false
    KnifeKills = false
    KnifeAnnoy = false
    autodrop = false
    lettucefarm = false
    AutoArmor = true
    Glitch = false
    SMITE = false
    Bagging = false
    Sneak = false
    boxing = false
    if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
    if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
end
Stop()
function GripPos(Y)
    local LastObject = STAND.Character:FindFirstChildOfClass("Tool")
    getHumanoid(STAND):UnequipTools() wait(.1)
    LastObject.GripPos = Vector3.new(-0,-Y,0) wait(.1)
    STAND.Character:FindFirstChild("Humanoid"):EquipTool(LastObject)
end

function Hit()
    if Attack == 'Heavy' then
        if STAND.Character:FindFirstChild('Combat') then
            STAND.Character:FindFirstChild('Combat'):Activate()
        else
            STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
        end   
    else
        if Attack == 'Light' then
            if STAND.Character:FindFirstChild('Combat') then
                STAND.Character:FindFirstChild('Combat'):Activate()
                STAND.Character:FindFirstChild('Combat'):Deactivate()
            else
                STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
            end  
        end
    end
end

function KnifeHit()
    if Attack == 'Heavy' then
        if STAND.Character:FindFirstChild('[Knife]') then
            STAND.Character:FindFirstChild('[Knife]'):Activate()
        else
            STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character
        end   
    else
        if Attack == 'Light' then
            if STAND.Character:FindFirstChild('[Knife]') then
                STAND.Character:FindFirstChild('[Knife]'):Activate()
                STAND.Character:FindFirstChild('[Knife]'):Deactivate()
            else
                STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character
            end  
        end
    end
end

function LowerArm(TP)
    STAND.Character:FindFirstChild('RightHand').CFrame = TP
    STAND.Character:FindFirstChild('LeftHand').CFrame = TP
    STAND.Character:FindFirstChild('RightFoot').CFrame = TP
    STAND.Character:FindFirstChild('LeftFoot').CFrame = TP
    STAND.Character:FindFirstChild('Head').CFrame = TP
end

function Reset()
    game.ReplicatedStorage.MainEvent:FireServer("ResetNew")
    getHumanoid(STAND):ChangeState'Dead'
end

function TargetMalee(TARGET)
    q = getRoot(TARGET)
    w = TARGET.Character:FindFirstChild('Head')
    e = getHumanoid(TARGET)
    t = getRoot(STAND)
    for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
    if game.Workspace.Vehicles:FindFirstChild(TARGET.Name) then
        t.CFrame = CFrame.new(game.Workspace.Vehicles[TARGET.Name].Position)*CFrame.new(game.Workspace.Vehicles[TARGET.Name].Velocity*.4)*CFrame.new(0,0,0)
    else
        if resolve == true then
            if AttackMode == "Under" then
                if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                    t.CFrame = CFrame.new(q.Position + Vector3.new(0,UnderP,0) + (e.MoveDirection*Prediction*e.WalkSpeed))*CFrame.Angles(math.pi*0.5,0,0)
                else
                    t.CFrame = q.CFrame*CFrame.new(0,500,0)
                end
            else
                if AttackMode == "Sky" then
                    if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                        t.CFrame = CFrame.new(q.Position + Vector3.new(0,SkyP,0) + (e.MoveDirection*Prediction*e.WalkSpeed))
                    else
                        t.CFrame = q.CFrame*CFrame.new(0,500,0)
                    end
                end		
            end
        else
            if AttackMode == "Under" then
                if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                    t.CFrame = CFrame.new(q.Position.X+(w.Velocity.X*Prediction),q.Position.Y+(w.Velocity.Y*0),q.Position.Z+(w.Velocity.Z*Prediction))*CFrame.new(0,UnderP,0)*CFrame.Angles(math.pi*0.5,0,0)
                else
                    t.CFrame = q.CFrame*CFrame.new(0,500,0)
                end
            else
                if AttackMode == "Sky" then
                    if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                        t.CFrame = CFrame.new(q.Position.X+(w.Velocity.X*Prediction),q.Position.Y+(w.Velocity.Y*0),q.Position.Z+(w.Velocity.Z*Prediction))*CFrame.new(0,0,0)
                    else
                        t.CFrame = q.CFrame*CFrame.new(0,500,0)
                    end
                end		
            end
        end
        game.Workspace.Camera.CameraSubject = getHumanoid(TARGET)
    end
end

function TargetKnife(TARGET)
    for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
    if game.Workspace.Vehicles:FindFirstChild(TARGET.Name) then
        getRoot(STAND).CFrame = CFrame.new(game.Workspace.Vehicles[TARGET.Name].Position)*CFrame.new(game.Workspace.Vehicles[TARGET.Name].Velocity*.4)*CFrame.new(0,0,0)
    else
        if resolve == true then
            getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,UnderP,0) + (getHumanoid(TARGET).MoveDirection*Prediction*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(math.pi*0.5,0,0)
        else
            getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position.X+(getRoot(TARGET).Velocity.X*Prediction),getRoot(TARGET).Position.Y+(getRoot(TARGET).Velocity.Y*0),getRoot(TARGET).Position.Z+(getRoot(TARGET).Velocity.Z*Prediction))*CFrame.new(0,UnderP,0)*CFrame.Angles(math.pi*0.5,0,0)
        end
    end	
end

function Grab(Target)
    Stop()
    noclip = true
    repeat rs.heartbeat:Wait()
        if KO(TARGET).Value == true then
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.3)
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,3,0)
        end
    until KO(TARGET).Value == false
    Summon()
end


function Bring(Target)
    Stop()
    bring = true
    noclip = true
    if KO(TARGET).Value == false then
        game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
        repeat rs.heartbeat:Wait()
            if KO(TARGET).Value == false then
                Hit()
                TargetMalee(Target)
                game.Workspace.Camera.CameraSubject = getRoot(TARGET)
            end
        until KO(TARGET).Value == true or bring == false

        repeat rs.heartbeat:Wait()
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
        until Attacking(STAND).Value == false
        if Alt == false then
            repeat rs.heartbeat:Wait()
                if KO(TARGET).Value == true then
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                    wait(.2)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                    wait(.3)
                    getRoot(STAND).CFrame = OWNER.Character:FindFirstChild('HumanoidRootPart').CFrame*CFrame.new(0,3,0)
                end
            until KO(TARGET).Value == false or bring == false
        end
        Summon()
    else
        if Alt == false then
            repeat rs.heartbeat:Wait()
                if KO(TARGET).Value == true then
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                    wait(.2)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                    wait(.3)
                    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,3,0)
                end
            until KO(TARGET).Value == false or bring == false
        end
        Summon()
    end
end

function GetNearest()
    local ClosestPlayer
    local ClosestDistance = math.huge
    for _,v in pairs(game.Players:GetPlayers()) do
        if v.Character and OWNER.Character then
            if v.Character:FindFirstChild('BodyEffects') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Defense') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('BreakingParts') then
                if v ~= OWNER and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
                    if v.Character:WaitForChild('BodyEffects')['K.O'].Value == false then
                        if v:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew') then
                            if v.Character:FindFirstChild('HumanoidRootPart') then
                                if v.DataFolder.Information.Crew.Value ~= OWNER.DataFolder.Information.Crew.Value or not v.DataFolder.Information:FindFirstChild('Crew') then
                                    local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                    if Distance < ClosestDistance then
                                        if Distance <= StudLimit then
                                            ClosestDistance = Distance
                                            ClosestPlayer = v
                                        end
                                    end
                                end
                            end
                        else
                            if v.Character:FindFirstChild('HumanoidRootPart') then
                                local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                if Distance < ClosestDistance then
                                    if Distance <= StudLimit then
                                        ClosestDistance = Distance
                                        ClosestPlayer = v
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return ClosestPlayer
end

function GetNearest2()
    local ClosestPlayer
    local ClosestDistance = math.huge
    for _,v in pairs(game.Players:GetPlayers()) do
        if v.Character and OWNER.Character then
            if v.Character:FindFirstChild('BodyEffects') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Defense') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('BreakingParts') then
                if v ~= OWNER and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
                    if v.Character:WaitForChild('BodyEffects')['K.O'].Value == true then
                        if v:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew') then
                            if v.Character:FindFirstChild('HumanoidRootPart') then
                                if v.DataFolder.Information.Crew.Value ~= OWNER.DataFolder.Information.Crew.Value or not v.DataFolder.Information:FindFirstChild('Crew') then
                                    local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                    if Distance < ClosestDistance then
                                        if Distance <= StudLimit then
                                            ClosestDistance = Distance
                                            ClosestPlayer = v
                                        end
                                    end
                                end
                            end
                        else
                            if v.Character:FindFirstChild('HumanoidRootPart') then
                                local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                if Distance < ClosestDistance then
                                    if Distance <= StudLimit then
                                        ClosestDistance = Distance
                                        ClosestPlayer = v
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return ClosestPlayer
end

--Animations
function ANIMATION()
    if not game:GetService("Workspace"):FindFirstChild("barrage1") and not game:GetService("Workspace"):FindFirstChild("barrage2") and not game:GetService("Workspace"):FindFirstChild("barrage3") and not game:GetService("Workspace"):FindFirstChild("barrage4") then
        local barrage1 = Instance.new('Animation',game:GetService("Workspace"))
        barrage1.AnimationId = 'rbxassetid://8254787838'
        barrage1.Name = "barrage1"
        local barrage2 = Instance.new('Animation',game:GetService("Workspace"))
        barrage2.AnimationId = 'rbxassetid://8254789608'
        barrage2.Name = "barrage2"
        local barrage3 = Instance.new('Animation',game:GetService("Workspace"))
        barrage3.AnimationId = 'rbxassetid://8254792138'
        barrage3.Name = "barrage3"
        local barrage4 = Instance.new('Animation',game:GetService("Workspace"))
        barrage4.AnimationId = 'rbxassetid://8254794168'
        barrage4.Name = "barrage4"
        Barraging1 = getHumanoid(STAND):LoadAnimation(barrage1)
        Barraging2 = getHumanoid(STAND):LoadAnimation(barrage2)
        Barraging3 = getHumanoid(STAND):LoadAnimation(barrage3)
        Barraging4 = getHumanoid(STAND):LoadAnimation(barrage4)
    else
        local barrage1 = game:GetService("Workspace").barrage1
        local barrage2 = game:GetService("Workspace").barrage2
        local barrage3 = game:GetService("Workspace").barrage3
        local barrage4 = game:GetService("Workspace").barrage4
        Barraging1 = getHumanoid(STAND):LoadAnimation(barrage1)
        Barraging2 = getHumanoid(STAND):LoadAnimation(barrage2)
        Barraging3 = getHumanoid(STAND):LoadAnimation(barrage3)
        Barraging4 = getHumanoid(STAND):LoadAnimation(barrage4)
    end

    if not game:GetService("Workspace"):FindFirstChild("FLY") and
    not game:GetService("Workspace"):FindFirstChild("HOVER") and 
    not game:GetService("Workspace"):FindFirstChild("HOVERV2") and 
    not game:GetService("Workspace"):FindFirstChild("HOVERV3") and 
    not game:GetService("Workspace"):FindFirstChild("GLIDE") then
        local Hover = Instance.new('Animation',game:GetService("Workspace"))
        local Glide = Instance.new('Animation',game:GetService("Workspace"))
        local Fly = Instance.new('Animation',game:GetService("Workspace"))
        local HoverV2 = Instance.new('Animation',game:GetService("Workspace"))
        local HoverV3 = Instance.new('Animation',game:GetService("Workspace"))
        Hover.AnimationId = 'rbxassetid://3541114300'
        Glide.AnimationId = 'rbxassetid://3084858603'
        Fly.AnimationId = 'rbxassetid://3541044388'
        HoverV2.AnimationId = 'rbxassetid://13850634687'
        HoverV3.AnimationId = 'rbxassetid://13850660986'
        Hover.Name = "HOVER"
        Glide.Name = "GLIDE"
        Fly.Name = "FLY"
        HoverV2.Name = "HOVERV2"
        HoverV3.Name = "HOVERV3"
        GLIDE = getHumanoid(STAND):LoadAnimation(Glide)
        FLY = getHumanoid(STAND):LoadAnimation(Fly)
        HOVER = getHumanoid(STAND):LoadAnimation(Hover)
        HOVERV2 = getHumanoid(STAND):LoadAnimation(HoverV2)
        HOVERV3 = getHumanoid(STAND):LoadAnimation(HoverV3)
    else
        GLIDE = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").GLIDE)
        FLY = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").FLY)
        HOVER = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").HOVER)
        HOVERV2 = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").HOVERV2)
        HOVERV3 = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").HOVERV3)
    end
    -- Poses :
    if not game:GetService("Workspace"):FindFirstChild("TopRock") then
        TopRock = Instance.new('Animation',game:GetService("Workspace"));
        TopRock.AnimationId = 'rbxassetid://3361276673';
        TopRock.Name = 'TopRock';
        Pose1 = getHumanoid(STAND):LoadAnimation(TopRock);
        Pose1.Looped = true;
        Pose1.Priority = Enum.AnimationPriority.Action;
    else
        TopRock = game:GetService("Workspace"):FindFirstChild("TopRock");
        Pose1 = getHumanoid(STAND):LoadAnimation(TopRock);
        Pose1.Looped = true;
        Pose1.Priority = Enum.AnimationPriority.Action;
    end
    
    if not game:GetService("Workspace"):FindFirstChild("Beckon") then
        Beckon = Instance.new('Animation',game:GetService("Workspace"));
        Beckon.AnimationId = 'rbxassetid://5230598276';
        Beckon.Name = 'Beckon';
        Pose2 = getHumanoid(STAND):LoadAnimation(Beckon);
        Pose2.Looped = true;
        Pose2.Priority = Enum.AnimationPriority.Action;
    else
        Beckon = game:GetService("Workspace"):FindFirstChild("Beckon");
        Pose2 = getHumanoid(STAND):LoadAnimation(Beckon);
        Pose2.Looped = true;
        Pose2.Priority = Enum.AnimationPriority.Action;
    end
    
    if not game:GetService("Workspace"):FindFirstChild("Godlike") then
        Godlike = Instance.new('Animation', game:GetService("Workspace"));
        Godlike.AnimationId = 'rbxassetid://3337994105';
        Godlike.Name = 'Godlike';
        Pose3 = getHumanoid(STAND):LoadAnimation(Godlike);
        Pose3.Looped = true;
        Pose3.Priority = Enum.AnimationPriority.Action;
    else
        Godlike = game:GetService("Workspace"):FindFirstChild("Godlike");
        Pose3 = getHumanoid(STAND):LoadAnimation(Godlike);
        Pose3.Looped = true;
        Pose3.Priority = Enum.AnimationPriority.Action;
    end

    
end
ANIMATION()	
function TWEEN(CFRAME)
    local Tween = game:GetService('TweenService'):Create(getRoot(STAND),TweenInfo.new(.2,Enum.EasingStyle.Linear),{CFrame = CFRAME})
    Tween:Play();
    Tween.Completed:Wait();
end    

function MoveTo(X,Y,Z)  
    getHumanoid(STAND):ChangeState(8)
    if STAND.Character.Head:FindFirstChildWhichIsA("Motor6D") then
        if not getRoot(STAND):FindFirstChildWhichIsA("BodyPosition") then
            local BP = Instance.new("BodyPosition",getRoot(STAND))
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 3500
            BP.D = 500
            getHumanoid(STAND).AutoRotate = false
        end
        if not getRoot(STAND):FindFirstChildWhichIsA("BodyGyro") then
            local bg = Instance.new("BodyGyro",getRoot(STAND))
            bg.maxTorque = Vector3.new(9e9,9e9,9e9)
            bg.P = 10000
        end
        getRoot(STAND).BodyGyro.CFrame = getRoot(OWNER).CFrame
        getRoot(STAND).BodyPosition.Position = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z).Position
    else
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z)
        STAND.Character:FindFirstChild('RightHand').CFrame = getRoot(STAND).CFrame*CFrame.new(0,4,5)
        STAND.Character:FindFirstChild('LeftHand').CFrame = getRoot(STAND).CFrame*CFrame.new(0,4,0)
        STAND.Character:FindFirstChild('RightFoot').CFrame = getRoot(STAND).CFrame*CFrame.new(0,4,0)
        STAND.Character:FindFirstChild('LeftFoot').CFrame = getRoot(STAND).CFrame*CFrame.new(0,4,0)
        STAND.Character:FindFirstChild('Head').CFrame = getRoot(STAND).CFrame*CFrame.new(0,4,0)
    end
end

function MoveToTarget(X,Y,Z)
    if not getRoot(STAND):FindFirstChildWhichIsA("BodyPosition") then
        local BP = Instance.new("BodyPosition",getRoot(STAND))
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 2500
        BP.D = 300
        getHumanoid(STAND).AutoRotate = false
    end
    if not getRoot(STAND):FindFirstChildWhichIsA("BodyGyro") then
        local bg = Instance.new("BodyGyro",getRoot(STAND))
        bg.maxTorque = Vector3.new(9e9,9e9,9e9)
        bg.P = 2500
    end
    getRoot(STAND).BodyGyro.CFrame = getRoot(TARGET).CFrame
    getRoot(STAND).BodyPosition.Position = getRoot(TARGET).CFrame*CFrame.new(X,Y,Z).Position
end

-- Poses :
local function pose1()
    if Posing1 == true then
        rs:UnbindFromRenderStep("POSING")
        Posing1 = false
        Pose1:Stop(0.5)
    else
        Posing1 = true
        rs:BindToRenderStep("POSING",-1 ,function()
            pcall(function()
                if Posing1 == true then
                    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                        if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                            (v.Animation.AnimationId:match("rbxassetid://3084858603")) or 
                            (v.Animation.AnimationId:match("rbxassetid://13850634687")) then
                            v:Stop();
                        end
                    end
                    if not Pose1.IsPlaying then          
                        Pose1:Play();
                        Pose1:AdjustSpeed(0);
                        Pose1.TimePosition = 0.42;
                    end
                end
            end)
        end)
    end
end

local function pose2()
    if Posing2 == true then
        rs:UnbindFromRenderStep("POSING")
        Posing2 = false
        Pose2:Stop(0.5)
    else
        Posing2 = true
        rs:BindToRenderStep("POSING",-1 ,function()
            pcall(function()
                if Posing2 == true then
                    if not Pose2.IsPlaying then
                        Pose2:Play();
                        Pose2:AdjustSpeed(0);
                        Pose2.TimePosition = 0.42;
                    end
                end
            end)
        end)
    end
end

local function pose3()
    if Posing3 == true then
        rs:UnbindFromRenderStep("POSING")
        Posing3 = false
        Pose3:Stop(0.5)
    else
        Posing3 = true
        rs:BindToRenderStep("POSING",-1 ,function()
            pcall(function()
                if Posing3 == true then
                    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                        if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                            (v.Animation.AnimationId:match("rbxassetid://3084858603")) or 
                            (v.Animation.AnimationId:match("rbxassetid://13850634687")) then
                            v:Stop();
                        end
                    end
                    if not Pose3.IsPlaying then
                        Pose3:Play();
                        Pose3:AdjustSpeed(0);
                        Pose3.TimePosition = 0.85;
                    end
                end
            end)
        end)
    end
end

--BOOMBOX
local OriginalKeyUpValue = 0
function StopAudio()
    if STAND.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") then
        game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
    end
end

function STOPLMAO(ID,Key)
    local cor = coroutine.wrap(function()
        wait(STAND.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if STAND.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end

function play(ID,STOP,TOOL)
    if STAND.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        if STAND.Character:FindFirstChildWhichIsA("Tool") and LMAO == true then
            Tool = STAND.Character:FindFirstChildWhichIsA("Tool")
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
        end
        STAND.Backpack["[Boombox]"].Parent = STAND.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox",ID)
        STAND.Character["[Boombox]"].Parent = STAND.Backpack
        STAND.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = STAND.Character
            end
        end
        if STOP == true then
            STAND.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat Wait() until STAND.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and STAND.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                STOPLMAO(ID,OriginalKeyUpValue)
            end)
            cor()
        end
    end
end

function SummonAudio()
    if SummonMusic == true and StandMode == 'Star Platinum : OverHeaven' then
        play(5684695930,true,true)
    elseif SummonMusic == true and StandMode == "Star Platinum, Za Warudo!" then
        play(5736107502,true,true)
    elseif SummonMusic == true and StandMode == 'Star Platinum : The World' then
        play(2404992854,true,true)
    elseif SummonMusic == true and StandMode == "TheWorld" then
        play(5129686200,true,true)
    elseif SummonMusic == true and StandMode == 'C moon' then
        play(2404992854,true,true)
    elseif SummonMusic == true and StandMode == "Cmoon" then
        play(8258958078,true,true)
    elseif SummonMusic == true and StandMode == "King Crimson" then
        play(3373956700,true,true)
    elseif SummonMusic == true and StandMode == "MIH" then
        play(8713037614,true,true)
    elseif SummonMusic == true and StandMode == 'D4C' then
        play(8769131644,true,true)
    elseif SummonMusic == true and StandMode == 'Killer Queen' then
        play(5818138638,true,true)
    end
end


function Summon()
    Stop()
    follow = true
    noclip = true
    blocking = true
    if FlyMode == 'Heaven' then
        HOVER:Play(0.28)
        HOVERV2:Play(0.28)
    else
        HOVER:Play(0.28)
    end
end

function SummonPose1()
    Stop()
    noclip = true
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    rs.Stepped:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0.4,-3,3)
    local BP = Instance.new("BodyPosition")
    BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    BP.P = 2500
    BP.D = 275
    BP.Parent = getRoot(STAND)
    BP.Position = getRoot(STAND).Position
    rs:BindToRenderStep("Summon", -1 , function()
        BP.Position = getRoot(OWNER).CFrame*CFrame.new(1.4,1.85,1.7).Position
    end)
    pose1()
    wait(1.2)
    SummonAudio()
    pose1()
    rs:UnbindFromRenderStep("Summon")
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    Summon()
end

function SummonPose2()
    Stop()
    noclip = true
    pose2(1)
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    rs.Stepped:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-3,3)
    rs.Stepped:Wait()
    local BP = Instance.new("BodyPosition")
    BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    BP.P = 300
    BP.D = 100
    BP.Parent = getRoot(STAND)
    BP.Position = getRoot(STAND).Position
    rs:BindToRenderStep("Summon", -1 , function()
        BP.Position = getRoot(OWNER).CFrame*CFrame.new(1.4,1,3).Position
    end)
    wait(1.2)
    SummonAudio()
    rs:UnbindFromRenderStep("Summon")
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    pose2()
    Summon()
end

function SummonPose3()
    Stop()
    noclip = true
    pose3(1)
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    rs.Stepped:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-3,1.65)
    rs.Stepped:Wait()
    local BP = Instance.new("BodyPosition")
    BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    BP.P = 300
    BP.D = 100
    BP.Parent = getRoot(STAND)
    BP.Position = getRoot(STAND).Position
    rs:BindToRenderStep("Summon", -1 , function()
        BP.Position = getRoot(OWNER).CFrame*CFrame.new(0,2,3).Position
    end)
    wait(1)
    SummonAudio()
    rs:UnbindFromRenderStep("Summon")
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    pose3()
    Summon()
end

function Barrage()
    if Sounds == true and StandMode == 'Star Platinum : OverHeaven' then
        play(6181278583,false,true)
    elseif Sounds == true and StandMode == "Star Platinum,Za Warudo!" then
        play(6181278583,false,true)
    elseif Sounds == true and StandMode == 'Star Platinum: The World' then
        play(6181278583,false,true)
    elseif Sounds == true and StandMode == "TheWorld" then
        play(6889746326,false,true)
    end
    Stop()
    noclip = true
    barragepunch = true	
    barragepos = true
    repeat rs.heartbeat:Wait()
        if STAND.Character:FindFirstChild('Combat') then
            STAND.Character:FindFirstChild('Combat'):Activate()
            STAND.Character:FindFirstChild('Combat'):Deactivate()
        else
            STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
        end
        for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
            if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                (v.Animation.AnimationId:match("rbxassetid://13850634687")) or 
                (v.Animation.AnimationId:match("rbxassetid://13850660986")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788309317")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788308661")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788311138")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788309982")) then 
                v:Stop();
            end
        end

        Barraging1:Play()
        Barraging2:Stop()
        Barraging3:Stop()
        Barraging4:Stop()	
        Barraging1:AdjustSpeed(8.15)
        wait(0.013)
        Barraging1:Stop()
        Barraging2:Play()
        Barraging3:Stop()
        Barraging4:Stop()	
        Barraging2:AdjustSpeed(8.15)
        wait(0.013)
        Barraging1:Stop()
        Barraging2:Stop()
        Barraging3:Play()
        Barraging4:Stop()
        Barraging3:AdjustSpeed(8.15)
        wait(0.013)
        Barraging1:Stop()
        Barraging2:Stop()
        Barraging3:Stop()
        Barraging4:Play()
        Barraging4:AdjustSpeed(8.15)

    until barragepunch == false
    
end

function Nobarrage()
    StopAudio()
    wait()
    if Sounds == true then
        play(6603004272,true,true)
    end
    Summon()
end

function Vanish()
    Stop()
    noclip = true
    MoveTo(-0.2,-10,1.4)
    wait(0.250)
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    vanish = true
end

function BuyKnife()
    noclip = true
    repeat Wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop['[Knife] - $155'].Head.CFrame*CFrame.new(0,-5,0)
        fireclickdetector(game.Workspace.Ignored.Shop['[Knife] - $155'].ClickDetector)
    until STAND.Backpack:FindFirstChild("[Knife]")
    STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character
end

function BuyWeight()
    HeavyWeights = 0
    Weights = 0
    repeat wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[HeavyWeights] - $258"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[HeavyWeights] - $258"].ClickDetector)
        for i,v in pairs(STAND.Backpack:GetChildren()) do
            if v.Name == "[HeavyWeights]" then
                HeavyWeights = HeavyWeights + 1 
                v.Parent = STAND.Character
            end
        end
    until HeavyWeights >= 2

    repeat wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Weights] - $124"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[Weights] - $124"].ClickDetector)
        for i,v in pairs(STAND.Backpack:GetChildren()) do
            if v.Name == "[Weights]" then
                Weights = Weights + 1 
                v.Parent = STAND.Character
            end
        end
    until Weights >= 2

    for i,v in pairs(STAND.Backpack:GetChildren()) do
        if v.Name == "[Weights]" and v.Name == "[HeavyWeights]" then
            v.Parent = STAND.Character
        end
    end

    AutoWeight = true
end

function Heal()
    Stop()
    noclip = true
    getHumanoid(STAND):UnequipTools()
    repeat Wait()
        getRoot(STAND).CFrame=game.Workspace.Ignored.Shop["[Taco] - $2"].Head.CFrame*CFrame.new(0,-5,0)   
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
    until STAND.Backpack:FindFirstChild("[Taco]")
    STAND.Backpack:FindFirstChild("[Taco]").Parent = STAND.Character
    GripPos(10)
    wait(.1)
    follow = true
    repeat Wait()
        STAND.Character:FindFirstChild('[Taco]'):Activate()
    until not STAND.Character:FindFirstChild('[Taco]')
end

function SAVEOWNER()
    Stop()
    noclip = true
    follow = false
    getHumanoid(STAND):UnequipTools()
    game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
    repeat rs.heartbeat:Wait()
        if KO(OWNER).Value == true then
            getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,3,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            wait(.1)
            getRoot(STAND).CFrame = CFrame.new(-484,41,-100)
            wait(.4)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        end

        if KO(OWNER).Value == false then
            follow = true
        end
    until KO(OWNER).Value == false
end

function TP(cframe)
    if Alt == false then
        Stop()
        noclip = true
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        if KO(OWNER).Value == false then
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        repeat rs.heartbeat:Wait()
            if KO(OWNER).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                circle = true
            end
        until KO(OWNER).Value == true

        circle = false

        repeat rs.heartbeat:Wait()
            getRoot(STAND).CFrame = CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,100,0)
        until Attacking(STAND).Value == false
        
        repeat rs.heartbeat:Wait()
            if KO(OWNER).Value == true then
                circle = false
                getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,3,0)wait(.2)
                game.ReplicatedStorage.MainEvent:FireServer("Grabbing") wait(.1)
                getRoot(STAND).CFrame = cframe wait(.4)
                game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            end	
        until KO(OWNER).Value == false
        Summon()
        wait(2)
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    else
        if KO(OWNER).Value == true then
            repeat rs.heartbeat:Wait()
                if KO(OWNER).Value == true then
                    circle = false
                    getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,3,0) wait(.2)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing") wait(.1)
                    getRoot(STAND).CFrame = cframe wait(.4)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                end
                until KO(OWNER).Value == false
                Summon()
            end
        end
    end
end

function TPGrabbed(cframe)
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    Stop()
    noclip = true
    getRoot(STAND).CFrame = cframe
    wait(.5)
    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    wait(.5)
    follow = true
end	

function FollowMode()
    if FlyMode == 'Fly' then
        HOVER:Play(0.28)
        function Moved()
            HOVER:Play(0.28)
            if getHumanoid(OWNER).MoveDirection.magnitude > 0 and StopHoverAnim == false then
                if FLY.IsPlaying == true then
                    return
                end
                    HOVER:Stop(0.3)
                    FLY:Play(0.3)
                else
                    wait(.2)
                    FLY:Stop(0.28)
                    HOVER:Play(0.28)
                end     
            end
            getHumanoid(OWNER):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
        else
            if FlyMode == 'Glide' then
            HOVER:Play(0.28)
            function Moved()
            if getHumanoid(OWNER).MoveDirection.magnitude > 0 and StopHoverAnim == false then
                if GLIDE.IsPlaying == true then
                    return
                end
                    HOVER:Stop(0.28)
                    GLIDE:Play(0.28)
                else
                    wait(.2)
                    GLIDE:Stop(0.28)
                    HOVER:Play(0.28)
                end     
            end
            getHumanoid(OWNER):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
        else
            if FlyMode == 'Heaven' then
                HOVER:Play(0.28)
                HOVERV2:Play(0.28)
                function Moved()
                if getHumanoid(OWNER).MoveDirection.magnitude > 0 and StopHoverAnim == false then
                    if GLIDE.IsPlaying == true then
                        return
                    end
                        HOVER:Stop(0.3)
                        HOVERV2:Stop(0.3)
                        GLIDE:Play(0.3)
                    else
                        wait(.2)
                        HOVER:Play(0.28)
                        HOVERV2:Play(0.28)
                        GLIDE:Stop(0.28)
                    end     
                end
                getHumanoid(OWNER):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)	
            end
        end
    end
end
FollowMode()

function MaskHide()
    if StopHoverAnim == false then
        getHumanoid(STAND):UnequipTools()
        repeat Wait()
            getRoot(STAND).CFrame=game.Workspace.Ignored.Shop["[Riot Mask] - $62"].Head.CFrame*CFrame.new(0,-5,0)
            fireclickdetector(game.Workspace.Ignored.Shop["[Riot Mask] - $62"].ClickDetector)
        until STAND.Backpack:FindFirstChild("[Mask]")
        STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
        STAND.Character:FindFirstChild('[Mask]'):Activate()
        getHumanoid(STAND):UnequipTools()
    end
end	

if AutoMask == true then
    noclip = true
    MaskHide()
    noclip = false
end

getRoot(STAND).CFrame=CFrame.new(-116,-58,146)

function Chat(msg)
    local A_1 = msg
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1,A_2)
end

TARGET = nil
Arg = ''
function Create(command,callback)
callback = callback or function() end
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
    if msg.Message:lower() == command:lower() and msg.FromSpeaker == tostring(OWNER.Name) then
            pcall(callback)
        end
    end)
end

function gplr(String)
    local strl = String:lower()
    for i,v in pairs(game:FindService("Players"):GetPlayers()) do
        if v.Name:lower():sub(1,#String) == String:lower() or v.DisplayName:lower():sub(1,#String) == String:lower() then
            return v
        end
    end 
end

function CreateTargetAbility(command,callback)
    callback = callback or function() end
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
                local msgString = msg.Message:split(" ")
                local cmdName = msg
                
                if msgString[1]:lower() == command:lower() then
                    
                    local args = {}
            
                    for i = 2,#msgString,1 do
                        table.insert(args,msgString[i])
                    end

                    if args[1] then
                        local GetPlayer = gplr(args[1])
                    if GetPlayer then
                        TARGET = GetPlayer
                        pcall(callback)
                    else
                        Chat("Invalid Target.")
                    end
                end
            end
        end
    end)
end

function Arg(command,callback)
    callback = callback or function() end
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
                local msgString = msg.Message:split(" ")
                local cmdName = msg
                
                if msgString[1]:lower() == command:lower() then
                    
                    local args = {}
            
                    for i = 2,#msgString,1 do
                        table.insert(args,msgString[i])
                    end

                    if args[1] then
                        local argument = args[1]
                    if argument then
                        Arg = argument
                        pcall(callback)
                    end
                end
            end
        end
    end)
end

Arg('Tp!',function()
    if Arg == "base" then
        TP(CFrame.new(-797,-39,-886))
    elseif Arg == "Roof" then
        TP(CFrame.new(-328,80,-298))
    elseif Arg == "bank" then
        TP(CFrame.new(-445,39,-284))
    elseif Arg == "club" then
        TP(CFrame.new(-264,-6.,-379))
    elseif Arg == "casino" then
        TP(CFrame.new(-1001,80,-230))
    elseif Arg == "ufo" then
        TP(CFrame.new(69,139,-688))
    elseif Arg == "mil" then
        TP(CFrame.new(36,50,-832))
    elseif Arg == "school" then
        TP(CFrame.new(-586,68,326))
    elseif Arg == "shop1" then
        TP(CFrame.new(-335.141,23,-298))
    elseif Arg == "shop2" then
        TP(CFrame.new(298,49,-615))
    elseif Arg == "rev" then
        TP(CFrame.new(-638,21,-126))
    elseif Arg == "db" then
        TP(CFrame.new(25,25,-834))
    elseif Arg == "pool" then
        TP(CFrame.new(1-847,51,-300))
    elseif Arg == "armor" then
        TP(CFrame.new(408,48,-43))
    elseif Arg == "subway" then
        TP(CFrame.new(646,47,-68))
    elseif Arg == "subway1" then
        TP(CFrame.new(-371,-21,113))
    elseif Arg == "sewer" then
        TP(CFrame.new(172,-41,156))
    elseif Arg == "wheel" then
        TP(CFrame.new(159,157,-722))
    elseif Arg == "safe1" then
        TP(CFrame.new(0,15,213))
    elseif Arg == "safe2" then
        TP(CFrame.new(-116,-58,146))
    elseif Arg == "safe3" then
        TP(CFrame.new(-547,173.,-0))
    elseif Arg == "safe4" then
        TP(CFrame.new(-1100,110.,-90))
    elseif Arg == "Basketball" then
        TP(CFrame.new(-908,21,-500))
    elseif Arg == "boxing" then
        TP(CFrame.new(-234,22,-1119))
    else
        local GetPlayer = gplr(Arg)
        if GetPlayer then
            TP(CFrame.new(getTorso(GetPlayer).Position)*CFrame.new(0,0,0))
        else
            Chat('Invalid Place.')
        end
    end
end)

Arg('Drop!',function()
    if Arg == "base" then
        TPGrabbed(CFrame.new(-797,-39,-886))
    elseif Arg == "bank" then
        TPGrabbed(CFrame.new(-445,39,-284))
    elseif Arg == "club" then
        TPGrabbed(CFrame.new(-264,-6.,-379))
    elseif Arg == "casino" then
        TPGrabbed(CFrame.new(-1001,80,-230))
    elseif Arg == "ufo" then
        TPGrabbed(CFrame.new(69,139,-688))
    elseif Arg == "mil" then
        TPGrabbed(CFrame.new(36,50,-832))
    elseif Arg == "school" then
        TPGrabbed(CFrame.new(-586,68,326))
    elseif Arg == "shop1" then
        TPGrabbed(CFrame.new(-335.141,23,-298))
    elseif Arg == "shop2" then
        TPGrabbed(CFrame.new(298,49,-615))
    elseif Arg == "rev" then
        TPGrabbed(CFrame.new(-638,21,-126))
    elseif Arg == "db" then
        TPGrabbed(CFrame.new(25,25,-834))
    elseif Arg == "pool" then
        TPGrabbed(CFrame.new(1-847,51,-300))
    elseif Arg == "armor" then
        TPGrabbed(CFrame.new(408,48,-43))
    elseif Arg == "subway" then
        TPGrabbed(CFrame.new(646,47,-68))
    elseif Arg == "subway1" then
        TPGrabbed(CFrame.new(-371,-21,113))
    elseif Arg == "sewer" then
        TPGrabbed(CFrame.new(172,-41,156))
    elseif Arg == "wheel" then
        TPGrabbed(CFrame.new(159,157,-722))
    elseif Arg == "safe1" then
        TPGrabbed(CFrame.new(-908,21,-500))
    elseif Arg == "safe2" then
        TPGrabbed(CFrame.new(-116,-58,146))
    elseif Arg == "safe3" then
        TPGrabbed(CFrame.new(-547,173.,-0))
    elseif Arg == "Basketball" then
        TPGrabbed(CFrame.new(-908,21,-500))
    elseif Arg == "boxing" then
        TPGrabbed(CFrame.new(-234,22,-1119))
    else
        local GetPlayer = gplr(Arg)
        if GetPlayer then
            TPGrabbed(CFrame.new(getTorso(GetPlayer).Position)*CFrame.new(0,0,0))
        else
            Chat('Invalid Place.')
        end
    end
end)

Arg('Prediction!',function()
    accomidationfactor = Arg
end)

Arg("Say!", function()
    Chat(""..Arg.."")
end)

Arg("Redeem!", function()
    game.ReplicatedStorage.MainEvent:FireServer("EnterPromoCode",Arg)
end)

Create("Drop!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end	

    if Pos == "Alt" then
        follow = false
        noclip = true
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,3,0) wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        follow = true
    else
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")

    end
end)

Create("Throw!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end	

    if Pos == "Alt" then
        follow = false
        noclip = true
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,3,0) wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        follow = true
    else
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)

    end
end)

Create("ShowSc!",function()
    rs:Set3dRenderingEnabled(true)
end)

Create("Hidesc!",function()
    rs:Set3dRenderingEnabled(false)
end)

Create('Rejoin!',function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,STAND)
end)

Create('Re!',function()
    game.ReplicatedStorage.MainEvent:FireServer("ResetNew")getHumanoid(STAND):ChangeState'Dead'
end)

Create('Refresh!',function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("Block",false)
end)

Create('Summon!',function()
    SummonAudio()
    Summon()
end)

Create('Summon1!',function()
    SummonPose1()
end)

Create('Summon2!',function()
    SummonPose2()
end)

Create('Summon3!',function()
    SummonPose3()
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q') then
        SummonAudio()
        Summon()
    end
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q1') then
        SummonPose1()
    end
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q2') then
        SummonPose2()
    end
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q3') then
        SummonPose3()
    end
end)

Create("Desummon!",function()
    Vanish()
end)

Create("Killer Queen!",function()
    if SummonMusic == true then
        play(5818138638,true,true)
    end
    Summon()
end)

Create("Star Platinum: The World",function()
    if SummonMusic == true then
        play(2404992854,true,true)
    end
    Summon()
end)

Create("Star Platinum : OverHeaven",function()
    if SummonMusic == true then
        play(5684695930,true,true)
    end
    Summon()
end)

Create("Star Platinum,Za Warudo!",function()
    if SummonMusic == true then
        play(5736107502,true,true)
    end
    Summon()
end)

Create("Star Platinum!",function()
    Summon()
end)

Create("ZA WARUDO : OVER HEAVEN",function()
    if SummonMusic == true then
        play(5129686200,true,true)
    end
    Summon()
end)

Create("C moon!",function()
    if SummonMusic == true then
        play(8258958078,true,true)
    end
    Summon()
end)

Create("D4C!",function()
    if SummonMusic == true then
        play(8769131644,true,true)
    end
    Summon()
end)

Create("King Crimson!",function()
    if SummonMusic == true then
        play(3373956700,true,true)
    end
    Summon()
end)

Create("Made In Heaven!",function()
    if SummonMusic == true then
        play(8713037614,true,true)
    end
    Summon()
end)

Create('Save!',function()
    SAVEOWNER()
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e w') then
        Vanish()
    end
end)

Create('Vanish!',function()
    Vanish()
end)

Create('Glitch!',function()
    game.ReplicatedStorage.MainEvent:FireServer("ResetNew")getHumanoid(STAND):ChangeState'Dead'
    wait(1)
    Knocked = true
end)

Create('gyat!',function()
    Stop()
    blocking = false
    Bind = false
    noclip = true
    game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
    repeat wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
    until Dead(STAND).Value == true
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,STAND)
end)

Create('Unblock!',function()
    Stop()
    blocking = false
    Bind = false
    noclip = true
    game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
    repeat wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
    until KO(STAND).Value == true
    wait(.1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
    follow = true
    repeat wait() until KO(STAND).Value == false
    Chat('Hand weld successfully removed.')
    wait(1)
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    wait(1)
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
end)

Create('Weld!',function()
    blocking = false
    Bind = false
    wait(.1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
end)
Create('Boxing!',function()
    Stop()
    noclip = true
    boxing = true
end)

Create('Power!',function()
    if STAND.DataFolder.Information.FightingStyle.Value == 'Boxing' then
        Stop()
        noclip = true
        Chat('FightingStyle :'..STAND.DataFolder.Information.FightingStyle.Value..' detected.') wait(.1)
        Chat('Switching FightingStyle to Default')
        repeat wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Default Moveset] - $0"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
        until STAND.DataFolder.Information.FightingStyle.Value == 'Default'
        follow = true
    end
    if Sounds == true then
        play(2152227673, true, true)
    end

    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService('Players'):GetChildren()) do
                if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                    firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                end
            end
        end)
    end
end)

Create("Autoarmor!",function()
    if ChatCmds == true then
        Chat('Auto Armor Enabled!')
    end
    AutoArmor = true
end)

Create("Unautoarmor!",function()
    if ChatCmds == true then
        Chat('Auto Armor Disabled!')
    end
    AutoArmor = false
end)

Create("Wallet!",function()
    if STAND.Backpack:FindFirstChild("Wallet") then
        if Sounds == true then
            play(134732869,true,true)
        end
        STAND.Backpack:FindFirstChild("Wallet").Parent = STAND.Character
    end
end)

Create("Unwallet!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    getHumanoid(STAND):UnequipTools()
end)

Create("Autodrop!",function()
    Chat("AutoDrop Enabled!")
    autodrop = true
end)

Create("Unautodrop!",function()
    Chat("AutoDrop Disabled!")
    autodrop = false
end)

Create("Moveset1!",function()
    Stop()
    noclip = true
    repeat wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Default Moveset] - $0"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
    until STAND.DataFolder.Information.FightingStyle.Value == 'Default'
    Chat('FightingStyle : '..STAND.DataFolder.Information.FightingStyle.Value)
    follow = true
end)

Create("Moveset2!",function()
    Stop()
    noclip = true
    repeat wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].ClickDetector)
    until STAND.DataFolder.Information.FightingStyle.Value == 'Boxing'
    Chat('FightingStyle : '..STAND.DataFolder.Information.FightingStyle.Value)
    follow = true
end)


Create("Nuke!",function()
    Stop()
    noclip = true
    t = 0
    repeat wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Grenade] - $721"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $721"].ClickDetector)
        for i,v in pairs(STAND.Backpack:GetChildren()) do
            if v.Name == "[Grenade]" then
                t = t + 1 
                v.Parent = STAND.Character
            end
        end
    until t >= 10
    getHumanoid(STAND):UnequipTools()
    follow = true
    wait(.1)
    for i,v in pairs(STAND.Backpack:GetChildren()) do
        wait(0.05)
        spawn(function()
            if v.Name == "[Grenade]" then
                v.Parent = STAND.Character; v:Activate(); wait(0.1); v:Deactivate(); wait(0.1); v:Activate()
            end
        end)
    end
end)

Create("Hidden!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    AttackMode = "Under"
end)

Create("Default!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    AttackMode = "Sky"
end)

Create("ghidden!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    GunMode = "Under"
end)

Create("gdefault!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    GunMode = "Sky"
end)


Create("Hide!",function()
    Stop()
    noclip = true
    MaskHide()
    follow = true
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create('Weight!',function()
    Stop()
    BuyWeight()
end)

Create('Dcash!',function()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    game.ReplicatedStorage.MainEvent:FireServer("DropMoney","10000")
end)

Create('Resolver!',function()
    resolve = true
end)

Create('Noresolver!',function()
    resolve = false
end)

Create('Bind!',function()
    Bind = true
end)

Create('Unbind!',function()
    Bind = false
end)

Create("pose1",function()
    pose1()
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("pose2",function()
    pose2()
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("pose3",function()
    pose3()
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("leave!",function()
    game:Shutdown()
end)

Create("StopAudio!",function()
    StopAudio()
end)

Create("Song!",function()
    play(CustomSong,false,true)
end)

Create('Heal!',function()
    Heal()
end)

Create('Stop!',function()
    Stop()
end)

Create('Uncrew!',function()
    game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
end)

Create('Crew!',function()
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    wait(1)
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
end)

Create('Sneak!',function()
    Stop()
    Sneak = true
end)

Create('Barrage!',function()
    Barrage()
end)

Create('Nobarrage!',function()
    Nobarrage()
end)
local FogDistance = 3000
local FogSpeed = 500

function FOG()
    repeat rs.heartbeat:Wait(0.005)
        getHumanoid(STAND):ChangeState(16)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        local Rany = math.random(18,38)
        getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
        LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
    until Fog == false
end

function WideFOG()
    repeat rs.heartbeat:Wait(0.005)
        getHumanoid(STAND):ChangeState(16)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        local Rany = math.random(18,70)
        getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
        LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
    until WideFog == false
end

function UpFOG()
    repeat rs.heartbeat:Wait(0.005)
        getHumanoid(STAND):ChangeState(16)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        local Rany = math.random(45,58)
        getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
        LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
    until UpFog == false
end

function FlatFOG()
    repeat rs.heartbeat:Wait(0.005)
    getHumanoid(STAND):ChangeState(16)
    for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
    if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
    getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,20,FogDistance)
    LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,20,-FogDistance))
    until FlatFog == false
end

Create('Fog!',function()
    if Alt == false then
        Stop()
        noclip = true
        Fog = true
        FOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        Fog = true
        FOG()
    end
end)

Create('WideFog!',function()
    if Alt == false then
        Stop()
        noclip = true
        WideFog = true
        WideFOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        WideFog = true
        WideFOG()
    end
end)

Create('FlatFog!',function()
    if Alt == false then
        Stop()
        noclip = true
        FlatFog = true
        FlatFOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        FlatFog = true
        FlatFOG()
    end
end)

Create('Upfog!',function()
    if Alt == false then
        Stop()
        noclip = true
        UpFog = true
        UpFOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        UpFog = true
        UpFOG()
    end
end)

Create('Mimic!',function()
    if ChatCmds == true then
        Chat("Mimic Enabled "..CustomName.."!")
    end
    if Sounds == true then
        play(8655611378,true,true) 
    end
    Stop()
    follow = true
    noclip = true
    mimic = true
    Block = true
    mimicpunch = true
end)

Create('Unmimic!',function()
    if ChatCmds == true then
        Chat("Mimic Disabled "..CustomName.."!")
    end
    if Sounds == true then
        play(8655611378,true,true) 
    end
    Stop()
    follow = true
    noclip = true
end)

Arg('Altmode!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Alt mode activated "..CustomName.."!")
        end
        Alt = true
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Arg('Left!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Position Set To Left "..CustomName.."!")
        end
        Pos = "Left"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Arg('Right!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Position Set To Right "..CustomName.."!")
        end
        Pos = "Right"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Arg('Back!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Position Set To Back "..CustomName.."!")
        end
        Pos = "Back"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Create("left!",function()
    if ChatCmds == true then
        Chat("Position Set To Left "..CustomName.."!")
    end
    Pos = "Left"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("right!",function()
    if ChatCmds == true then
        Chat("Position Set To Right "..CustomName.."!")
    end
    Pos = "Right"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("back!",function()
    if ChatCmds == true then
        Chat("Position Set To Back "..CustomName.."!")
    end
    Pos = "Back"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("Under!",function()
    Pos = "Under"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("Alt!",function()
    Pos = "Alt"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("light!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    Attack = "Light"
end)

Create("Heavy!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    Attack = "Heavy"
end)

CreateTargetAbility("Unview!",function()
    if TARGET then
        viewing = false
    end
end)

CreateTargetAbility("Grab!",function()
    if TARGET then
        Grab(TARGET)
    end
end)

CreateTargetAbility("Bring!",function()
    if TARGET then
        Bring(TARGET)
    end
end)


CreateTargetAbility("View!",function()
    if TARGET then
        Viewing = true
    end
end)

CreateTargetAbility("Smite!",function()
    if TARGET then
        SMITE = true
    end
end)

CreateTargetAbility("Knock!",function()
    if TARGET then
        Stop()
        noclip = true
        Knocked = true
    end
end)

CreateTargetAbility("bag!",function()
    if TARGET then
        Stop()
        noclip = true
        getHumanoid(STAND):UnequipTools()
        repeat rs.heartbeat:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[BrownBag] - $26"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[BrownBag] - $26"].ClickDetector)
        until STAND.Backpack:FindFirstChild("[BrownBag]")
        STAND.Backpack:FindFirstChild("[BrownBag]").Parent = STAND.Character wait(.1)
        STAND.Character["[BrownBag]"]:Activate() wait(.7)
        Bagging = true
        repeat rs.heartbeat:Wait()
            if KO(TARGET).Value == false and not TARGET.Character:FindFirstChild("Christmas_Sock") then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position.X+(getRoot(TARGET).Velocity.X*Prediction),getRoot(TARGET).Position.Y+(getRoot(TARGET).Velocity.Y*0),getRoot(TARGET).Position.Z+(getRoot(TARGET).Velocity.Z*Prediction))*CFrame.new(0,0,0)
                STAND.Character["[BrownBag]"]:Activate()
            end
        until TARGET.Character:FindFirstChild("Christmas_Sock") or not STAND.Character:FindFirstChild("[BrownBag]") or Bagging == false
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,100,0) wait(1)
        Summon()
    end
end)

CreateTargetAbility("Stomp!",function()
    if TARGET then
        Stop()
        noclip = true
        StompTarget = true
    end
end)

CreateTargetAbility("autokill!",function()
    if TARGET then
        Stop()
        noclip = true
        Kills = true
    end
end)

CreateTargetAbility("Stab!",function()
    if TARGET then
        Stop()
        noclip = true
        BuyKnife()
        Stabbing = true
    end
end)

CreateTargetAbility("Astab!",function()
    if TARGET then
        Stop()
        noclip = true
        BuyKnife()
        KnifeKills = true
    end
end)

CreateTargetAbility("KAnnoy!",function()
    if TARGET then
        Stop()
        noclip = true
        BuyKnife()
        KnifeAnnoy = true
    end
end)

CreateTargetAbility("Annoy!",function()
    if TARGET then
        Stop()
        noclip = true
        Annoy = true
    end
end)

CreateTargetAbility("Frame!",function()
    if TARGET then
        Stop()
        noclip = true
        Frame = true
    end
end)

CreateTargetAbility("Arrest!",function()
    if TARGET then
        if STAND.DataFolder:FindFirstChild("Officer").Value == 1 then
            Stop()
            noclip = true
            Arrest = true
        else
            Chat('I am not officer'..CustomName..'.')
        end
    end
end)

Create("Knife!",function()
    Stop()
    noclip = true
    BuyKnife()
    follow = true
end)

Create("Gun!",function()
    Stop()
    noclip = true
    repeat Wait()
        getRoot(STAND).CFrame=game.Workspace.Ignored.Shop["[LMG] - $3863"].Head.CFrame*CFrame.new(0,-5,0)
        fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3863"].ClickDetector)
    until STAND.Backpack:FindFirstChild("[LMG]")

    getRoot(STAND).CFrame=game.Workspace.Ignored.Shop['200 [LMG Ammo] - $309'].Head.CFrame*CFrame.new(0,-5,0)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $309"].ClickDetector)
    follow = true
end)

CreateTargetAbility("Gstomp!",function()
    if TARGET then
        Stop()
        if STAND.Backpack:FindFirstChild("[LMG]") then
            STAND.Backpack:FindFirstChild("[LMG]").Parent = STAND.Character
            if GunMode == 'Sky' then
                GripPos(-7)
            elseif GunMode == 'Under' then
                GripPos(7)
            end
        end
        blocking = false
        noclip = true
        GunStomp = true
    end
end)

CreateTargetAbility("Gknock!",function()
    if TARGET then
        Stop()
        if STAND.Backpack:FindFirstChild("[LMG]") then
            STAND.Backpack:FindFirstChild("[LMG]").Parent = STAND.Character
        end
        blocking = false
        noclip = true
        GunKnock = true
    end
end)

--SILENT CMD
local commands = {}
local prefix = "/"
local Players = game.Players

commands.e = function(arguments)
    local CMD = arguments[1]
    if CMD == 'b' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            Bring(TARGET)
        end
    elseif CMD == 't' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            noclip = true
            Knocked = true
        end
    elseif CMD == 't2' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            noclip = true
            Kills = true
        end
    elseif CMD == 's' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            noclip = true
            StompTarget = true
        end
    elseif CMD == 'arrest' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            noclip = true
            Arrest = true
        end
    elseif CMD == 'smite' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            noclip = true
            SMITE = true
        end
    elseif CMD == 'frame' then
        TARGET = gplr(arguments[2])
        if TARGET then
            Stop()
            noclip = true
            Frame = true
        end
    end
end
OWNER.Chatted:Connect(function(msg)
    msg = string.lower(msg)
    local splitString = msg:split(" ")
    local slashCommand = splitString[1] 
    local cmd = slashCommand:split(prefix)    
    local cmdName = cmd[2]    
    if commands[cmdName] then
        local arguments = {} 
        for i = 2,#splitString,1 do
            table.insert(arguments,splitString[i])            
        end
        commands[cmdName](arguments)
    end
end)

Create("Attack!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    killnear = true
end)

Create("Unattack!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    follow = true
end)

Create("Stab!",function()
    Stop()
    BuyKnife()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    noclip = true
    knifenear = true
end)

Create("Unstab!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    follow = true
end)

Create("Ora!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    ORA = true
end)

rs.Heartbeat:connect(function()
    if Knocked == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit()
        TargetMalee(TARGET)
    else
        if Knocked == true and KO(TARGET).Value == true then
            Summon()
        end
    end
end)

rs.Heartbeat:connect(function()
    if Annoy == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        TargetMalee(TARGET)
        if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() STAND.Character:FindFirstChild('Combat'):Deactivate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
    else
        if Annoy == true and KO(TARGET).Value == true then
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,-4.5,0)*CFrame.Angles(math.pi*0.5,0,0)
            if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() STAND.Character:FindFirstChild('Combat'):Deactivate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        end
    end
end)

rs.Heartbeat:connect(function()
    if KnifeAnnoy == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        KnifeHit()
        TargetKnife(TARGET)
    else
        if KnifeAnnoy == true and KO(TARGET).Value == true then
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,-4.5,0)*CFrame.Angles(math.pi*0.5,0,0)
            if STAND.Character:FindFirstChild('[Knife]') then STAND.Character:FindFirstChild('[Knife]'):Activate() STAND.Character:FindFirstChild('[Knife]'):Deactivate() else STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character end
        end
    end
end)

rs.Heartbeat:connect(function()
    if Stabbing == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        KnifeHit()
        TargetKnife(TARGET)
    else
        if Stabbing == true and KO(TARGET).Value == true then
            Summon()
        end
    end
end)

rs.Heartbeat:connect(function()
    if KnifeKills == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        KnifeHit()
        TargetKnife(TARGET)
    else
        if KnifeKills == true and KO(TARGET).Value == true then
            if Attacking(STAND).Value == true then
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            else
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                if Dead(TARGET).Value == true then
                    getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position)*CFrame.new(0,300,0)
                end
            end
        end
    end
end)

rs.Heartbeat:connect(function()
    if StompTarget == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit()
        TargetMalee(TARGET)
    else
        if StompTarget == true and KO(TARGET).Value == true then
            if Alt == false then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    noclip = true
                    if Dead(TARGET).Value == true then
                        Summon()
                    end	
                end
            else
                Summon()
            end
        end
    end
end)

rs.Heartbeat:connect(function()
    if Kills == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit()
        TargetMalee(TARGET)
    else
        if Kills == true and KO(TARGET).Value == true then
            if Alt == false then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    if Dead(TARGET).Value == true then
                        getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position)*CFrame.new(0,300,0)
                    end
                end
            else
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position)*CFrame.new(0,300,0)
            end
        end
    end
end)

rs.Heartbeat:connect(function()
    if Arrest == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit()
        TargetMalee(TARGET)
    else
        if Arrest == true and KO(TARGET).Value == true then
            if Attacking(STAND).Value == true then
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            else
                game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                if STAND.Backpack:FindFirstChild("Cuff") then
                    STAND.Backpack:FindFirstChild("Cuff").Parent = STAND.Character
                end
                STAND.Character:FindFirstChild('Cuff'):Activate()
                if TARGET.Character:FindFirstChild("BodyEffects"):FindFirstChild("Cuff").Value == true then
                    Summon()
                end
            end
        end
    end
end)

rs.Heartbeat:connect(function()
    if Frame == true and Pos == "Right" then
        MoveToTarget(2,2,2.5)
    elseif Frame == true and Pos == "Left" then
        MoveToTarget(-2,2,2.5)
    elseif Frame == true and Pos == "Back" then
        MoveToTarget(.6,2,3)
    end
end)

rs.Heartbeat:connect(function()
    if SMITE == true and game:GetService('Players'):FindFirstChild(TARGET.Name) then
        StopHoverAnim = true
        getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,0,0) + (getHumanoid(TARGET).MoveDirection*0.80*getHumanoid(TARGET).WalkSpeed))
        local vel = getRoot(STAND).Velocity
        getRoot(STAND).Velocity = Vector3.new(0,-99999999,0) 
        rs.Stepped:Wait()
        getRoot(STAND).Velocity = vel	
    end
end)

rs.Heartbeat:connect(function()
    if killnear == true then
        StopHoverAnim = true
        follow = false
        noclip = true
        local TARGET = GetNearest()
        if TARGET then
            if KO(TARGET).Value == false then
                TargetMalee(TARGET)
                Hit()
            end
        else
            follow = true
            noclip = true
            StopHoverAnim = false
        end
    end
end)

rs.Heartbeat:connect(function()
    if ORA == true then
        StopHoverAnim = true
        follow = false
        noclip = true
        local TARGET = GetNearest()
        if TARGET then
            if KO(TARGET).Value == false then
                Hit()
                if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                    StopHoverAnim = true
                    follow = false
                    noclip = true
                    TargetMalee(TARGET)
                else
                    StopHoverAnim = false
                    follow = true
                end
            else
                if KO(TARGET).Value == true then
                    StopHoverAnim = true
                    follow = false
                    noclip = true
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                    if Dead(TARGET).Value == true then
                        follow = true
                        noclip = true
                        StopHoverAnim = false
                    end
                end
            end
        else
            follow = true
            noclip = true
            StopHoverAnim = false
        end
    end
end)

rs.Heartbeat:connect(function()
    if knifenear == true then
        StopHoverAnim = true
        follow = false
        noclip = true
        local TARGET = GetNearest()
        if TARGET then
            if KO(TARGET).Value == false then
                TargetKnife(TARGET)
                KnifeHit()
            end
        else
            follow = true
            noclip = true
            StopHoverAnim = false
        end
    end
end)

rs.heartbeat:connect(function()
    if GunKnock == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Locking = true
        STAND.Character:FindFirstChild('RightHand').CFrame = getRoot(TARGET).CFrame*CFrame.new(0,5,0)
        STAND.Character:FindFirstChild('LeftHand').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('RightFoot').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('LeftFoot').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('Head').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame * CFrame.new(0,-9,0)

        MainEvent:FireServer("Block",false)
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            if STAND.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                if STAND.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload",STAND.Character:FindFirstChildWhichIsA("Tool")) 
                end
            end
        end
        STAND.Character:FindFirstChild('[LMG]'):Activate()
    elseif GunKnock == true and KO(TARGET).Value == true then
        STAND.Character:FindFirstChild('[LMG]'):Deactivate()
        StopHoverAnim = false
        GunKnock = false
        Strafe = false
        Locking = false
        follow = true
        noclip = true
    end
end)

rs.heartbeat:connect(function()
    if GunStomp == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Locking = true
        STAND.Character:FindFirstChild('RightHand').CFrame = getRoot(TARGET).CFrame*CFrame.new(0,5,0)
        STAND.Character:FindFirstChild('LeftHand').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('RightFoot').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('LeftFoot').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('Head').CFrame = getRoot(STAND).CFrame*CFrame.new(0,0,0)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame * CFrame.new(0,-9,0)

        MainEvent:FireServer("Block",false)
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            if STAND.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                if STAND.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload",STAND.Character:FindFirstChildWhichIsA("Tool")) 
                end
            end
        end
        STAND.Character:FindFirstChild('[LMG]'):Activate()
    elseif GunKnock == true and KO(TARGET).Value == true then
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
        Strafe = false
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        if Dead(guntarget).Value == true then
            STAND.Character:FindFirstChild('[LMG]'):Deactivate()
            StopHoverAnim = false
            GunKnock = false
            Locking = false
            follow = true
            noclip = true	
        end
    end
end)

rs.heartbeat:connect(function()
    if AutoArmor == true then
        if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value <= 30 then
            follow = false
            repeat
                getRoot(STAND).CFrame = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $3039"].Head.CFrame
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $3039"].ClickDetector)
                game:GetService("RunService").Heartbeat:Wait()
            until STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value >= 50
            follow = true
        end
    end
end)

rs.heartbeat:connect(function()
    if follow == true and Pos == "Right" then
        MoveTo(2,2,2.5)
    elseif follow == true and Pos == "Left" then
        MoveTo(-2,2,2.5)
    elseif follow == true and Pos == "Back" then
        MoveTo(.6,2,3)
    elseif follow == true and Pos == "Under" then
        MoveTo(.6,-15,3)
    elseif follow == true and Pos == "Alt" then
        local RanX = math.random(-1000,1000)
        local RanZ = math.random(-1000,1000)
        MoveTo(RanX,-495,RanZ)
    end

    if looking == true then
        --STAND.Character:SetPrimaryPartCFrame(CFrame.lookAt(getRoot(STAND).Position,getRoot(OWNER).Position*Vector3.new(1,0,1) + getRoot(STAND).Position*Vector3.new(0,1,0)))
    end

    if noclip == true then
        game.Workspace.FLOATPART.CFrame = getRoot(STAND).CFrame*CFrame.new(0,-3.4 ,0)
        for i,v in pairs(STAND.Character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("MeshPart") then
                v.CanCollide = false
                v.Velocity = Vector3.new(0,0,0)
            end
        end
    else
        game.Workspace.FLOATPART.CFrame = getRoot(STAND).CFrame*CFrame.new(0,30.4 ,0)
    end
end)
rs.Stepped:Connect(function(a,b)
    delta = (delta + b/duration) % 1

    if Strafe == true then
        if resolve == true then
            if GunMode == 'Sky' then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,7,0) + (getHumanoid(TARGET).MoveDirection*Prediction*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(0,5*math.pi*delta,0)
            elseif GunMode == 'Under' then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,-7,0) + (getHumanoid(TARGET).MoveDirection*Prediction*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(0,5*math.pi*delta,0)
            end
        else
            if GunMode == 'Sky' then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Velocity*Prediction)*CFrame.Angles(0,5*math.pi*delta,0)* CFrame.new(0,7,10)+ getRoot(TARGET).Position 
            elseif GunMode == 'Under' then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Velocity*Prediction)*CFrame.Angles(0,5*math.pi*delta,0)* CFrame.new(0,-7,10)+ getRoot(TARGET).Position 
            end
        end
    end
    if circle == true then
        getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,0,5)+ getRoot(OWNER).Position 
    end
end)

rs.Stepped:connect(function()
    if vanish == true then
        RanX = math.random(-1000,1000)
        RanZ = math.random(-1000,1000)
        getRoot(STAND).CFrame = CFrame.new(RanX,449,RanX)
    end
end)

rs.Stepped:connect(function()
    if autodrop == true then
        game.ReplicatedStorage.MainEvent:FireServer("DropMoney","10000")
    end
end)

rs.Stepped:connect(function()
    if lettucefarm == true then
        noclip = true
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Lettuce] - $5"].Head.CFrame*CFrame.new(0,-8,0)
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        if STAND.Backpack:FindFirstChild("[Lettuce]") then
            STAND.Backpack:FindFirstChild("[Lettuce]").Parent = STAND.Character
        end
        STAND.Character:FindFirstChild('[Lettuce]'):Activate()
    end
end)

rs.Stepped:connect(function()
    if AutoWeight == true then
        for i,v in pairs(STAND.Backpack:GetChildren()) do
            if v.Name == "[Weights]" and v.Name == "[HeavyWeights]" then
                v.Parent = STAND.Character
            end
        end

        for i,v in pairs(STAND.Character:GetChildren()) do
            if v.Name == "[Weights]" and v.Name == "[HeavyWeights]" then
                v:Activate()
            end
        end
    
        local RanX = math.random(-1000,1000)
        local RanZ = math.random(-1000,1000)
        getRoot(STAND).CFrame = CFrame.new(RanX,400,RanZ)
    end
end)

rs.Stepped:connect(function()
    if boxing == true then
        TWEEN(CFrame.new(-279.363251, 22.5704575, -1142.79883, -0.629518926, -4.21714468e-08, -0.776985168, -6.35824335e-08, 1, -2.76080292e-09, 0.776985168, 4.76646278e-08, -0.629518926))
        if STAND.Backpack:FindFirstChild("Combat") then
            STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character
        end
        wait()
        STAND.Character:FindFirstChild('Combat'):Activate()
        STAND.Character:FindFirstChild('Combat'):Deactivate()
    end
end)

rs.Stepped:connect(function()
    if blocking == true then
        if STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Block') then STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Block'):Destroy() end
        MainEvent:FireServer("Block",true) wait()
        MainEvent:FireServer("Block",false)
    end

    if Bind == true and Dead(STAND).Value == false and KO(STAND).Value == false then
        if getHumanoid(STAND).Health <= 80 then
            game.ReplicatedStorage.MainEvent:FireServer("ResetNew")
            getHumanoid(STAND):ChangeState'Dead'
        end
    end
end)

rs.heartbeat:connect(function()
    if Sneak == true then
        STAND.Character:WaitForChild("Humanoid"):ChangeState(5)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame * CFrame.new(0,-9,0)
        if STAND.Character:FindFirstChild('Combat') then
            STAND.Character:FindFirstChild('Combat'):Activate()
            STAND.Character:FindFirstChild('Combat'):Deactivate()
        else
            STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
        end
        for i,v in pairs(STAND.Character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("MeshPart") then
                v.CanCollide = false
                v.Velocity = Vector3.new(0,0,0)
            end
        end
    end
end)

rs.Stepped:connect(function()
    if barragepos == true then
        StopHoverAnim = true
        MoveTo(0,0.85,-4.85)
    end
end)

rs.Stepped:connect(function()
    if mimicpunch == true then
        if Attacking(STAND).Value == true then
            game:GetService("VirtualUser"):ClickButton1(Vector2.new())
            if STAND.Backpack:FindFirstChild("Combat") then
                STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character
            end
        end
    end
end)

rs.Stepped:connect(function()
    if mimic == true then
        if Attacking(STAND).Value == true then
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-6)
            Hit()
        else
            if Block == true then
                if OWNER.Character:FindFirstChild('BodyEffects'):FindFirstChild("Block") then
                    MainEvent:FireServer("Block",true)
                    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-6)
                else
                    MainEvent:FireServer("Block",false)
                end
            end
            --end
        end
    end
end)

rs.Stepped:connect(function()
    if Viewing == true then
        game.Workspace.Camera.CameraSubject = getHumanoid(TARGET)
    end
end)


rs.Stepped:Connect(function()
    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
        if (v.Animation.AnimationId:match("rbxassetid://2788315673"))
        or (v.Animation.AnimationId:match("rbxassetid://2788316350"))
        or (v.Animation.AnimationId:match("rbxassetid://2788313790"))
        or (v.Animation.AnimationId:match("rbxassetid://2788312709"))
        or (v.Animation.AnimationId:match("rbxassetid://2788314837"))
        or (v.Animation.AnimationId:match("rbxassetid://2788289281"))
        or (v.Animation.AnimationId:match("rbxassetid://3354699999"))
        or (v.Animation.AnimationId:match("rbxassetid://2788292075"))
        or (v.Animation.AnimationId:match("rbxassetid://2968344043"))
        or (v.Animation.AnimationId:match("rbxassetid://2838893290")) then
            v:Stop();
        end
    end
end)

--respawn
STAND.CharacterAdded:connect(function() 
    blocking = true
    barragepos = false
    barragepunch = false
    mimicpunch = false
    block = false
    mimic = false
    Fog = false
    UpFog = false
    WideFog	= false
    FlatFog = false
    STAND.Character:WaitForChild("FULLY_LOADED_CHAR")
    if AutoMask == true then MaskHide() end
    getRoot(STAND).CFrame=CFrame.new(-116,-58,146)
end)
STAND.CharacterAdded:connect(function() follow = false noclip = false looking = false STAND.Character:WaitForChild("FULLY_LOADED_CHAR") FollowMode() ANIMATION() end)
OWNER.CharacterAdded:connect(function() STAND.Character:WaitForChild("FULLY_LOADED_CHAR") getHumanoid(OWNER):GetPropertyChangedSignal("MoveDirection"):Connect(Moved) end)
if Hidescreen == true then rs:Set3dRenderingEnabled(false) else rs:Set3dRenderingEnabled(true) end  
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if Locking == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        if resolve == true then
            args[3] = TARGET.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0) + (TARGET.Character.Humanoid.MoveDirection * gunkillprediction * TARGET.Character.Humanoid.WalkSpeed)
        else
            args[3] = TARGET.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0) + (TARGET.Character.HumanoidRootPart.Velocity * gunkillprediction)
        end

        return old(unpack(args))
    end
    return old(...)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dehoisted/Chat-Spy/main/source/main.lua"))()
Notify({Title = ScriptName.." Loaded",Description ="https://discord.gg/ticxyy",Duration = 3.4028235e+38})
Notify({Title = "Hey beta tester :3",Description ="Made By Ticxyylolz#9164",Duration = 3.4028235e+38})
local ChatSpy = _G.ChatSpy
if ChatSpy then
    ChatSpy.OnMessageReceived:Connect(function(player, message)
        Notify({Title = player, Description = message,Duration = 3.4028235e+38})
    end)
end
function output(plr, msg)
    Notify({Title = plr.Name.. ": ".. msg ,Duration = 5})
end

for i,v in pairs(game.Players:GetChildren()) do
	v.Chatted:Connect(function(msg)
		output(v, msg)
	end)
end

game.Players.ChildAdded:Connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:Connect(function(msg)
			output(plr, msg)
		end)
	end
end)
end
