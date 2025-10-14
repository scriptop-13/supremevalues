-- Pantalla de bienvenida pequeña con fade out
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Crear ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

-- Cuadro negro centrado
local background = Instance.new("Frame")
background.Size = UDim2.new(0.5, 0, 0.3, 0) -- más pequeño (50% ancho, 30% alto)
background.Position = UDim2.new(0.25, 0, 0.35, 0) -- centrado
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BackgroundTransparency = 0
background.Parent = screenGui
background.AnchorPoint = Vector2.new(0, 0)

-- Texto principal
local mainText = Instance.new("TextLabel")
mainText.Size = UDim2.new(1, -20, 0.7, 0) -- ocupa 70% del cuadro
mainText.Position = UDim2.new(0, 10, 0, 10)
mainText.BackgroundTransparency = 1
mainText.Text = "Gracias por usar mi script para Tradeos"
mainText.TextColor3 = Color3.new(1, 1, 1)
mainText.TextScaled = true
mainText.Font = Enum.Font.GothamBold
mainText.Parent = background

-- Marca abajo pequeña
local smallText = Instance.new("TextLabel")
smallText.Size = UDim2.new(1, -20, 0.2, 0) -- ocupa 20% del cuadro
smallText.Position = UDim2.new(0, 10, 0.75, 0)
smallText.BackgroundTransparency = 1
smallText.Text = "tiktok: scriptzmm2.web"
smallText.TextColor3 = Color3.new(1, 1, 1)
smallText.TextScaled = true
smallText.Font = Enum.Font.Gotham
smallText.TextXAlignment = Enum.TextXAlignment.Left
smallText.Parent = background

-- Fade out
local TweenService = game:GetService("TweenService")
task.delay(5, function()
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    TweenService:Create(background, tweenInfo, {BackgroundTransparency = 1}):Play()
    TweenService:Create(mainText, tweenInfo, {TextTransparency = 1}):Play()
    TweenService:Create(smallText, tweenInfo, {TextTransparency = 1}):Play()

    task.wait(2.2)
    screenGui:Destroy()
end)

local ancientValues = {
	["Corrupt"] = 825,
    ["Gingerscope"] = 11600,
    ["Traveler's Axe"] = 7100,
    ["Harvester"] = 525,
    ["Celestial"] = 1150,
    ["Icepiercer"] = 400,
    ["Vampire's Axe"] = 625,
    ["Icebreaker"] = 125,
    ["Swirly Axe"] = 60,
    ["Batwing"] = 60,
    ["Elderwood Scythe"] = 60,
    ["Hallowscythe"] = 45,
    ["Logchopper"] = 20,
    ["Icewing"] = 10,
	["Traveler's Gun"] = 3800,
	["Evergun"] = 2900,
	["Turkey"] = 2150,
	["Evergreen"] = 1250,
	["Blossom"] = 955,
	["Sakura"] = 945,
	["Vampire's Gun"] = 1050,
	["Constellation"] = 1500,
	["Bauble"] = 500,
	["Sunrise"] = 245,
	["Darkshot"] = 715,
	["Darksword"] = 705,
    ["Bloom"] = 165,
    ["Flora"] = 170,
	["Bat"] = 275,
	["Rainbow Gun"] = 250,
	["Rainbow"] = 245,
	["Sunset"] = 130,
	["Candy"] = 175,
	["Heartblade"] = 120,
	["Flowerwood Gun"] = 150,
	["Ocean"] = 175,
	["Soul"] = 225,
	["Spirit"] = 220,
	["Flowerwood"] = 145,
	["Waves"] = 170,
	["Borealis"] = 105,
	["Sugar"] = 75,
	["Australis"] = 100,
	["Luger"] = 65,
	["Red Luger"] = 45,
	["Swirly Gun"] = 45,
	["Iceblaster"] = 65,
	["Candleflame"] = 60,
	["Elderwood Blade"] = 60,
	["Makeshift"] = 65,
	["Watergun"] = 120,
	["Pearl"] = 65,
	["Pearlshine"] = 65,
	["Darkbringer"] = 60,
	["Elderwood Revolver"] = 60,
	["Phantom"] = 60,
	["Spectre"] = 60,
	["Lightbringer"] = 50,
	["Swirly Blade"] = 25,
	["Green Luger"] = 35,
	["Hallowgun"] = 27,
	["Laser"] = 28,
	["Icebeam"] = 25,
	["Iceflake"] = 25,
	["Plasmabeam"] = 25,
	["Plasmablade"] = 25,
	["Amerilaser"] = 25,
	["Blaster"] = 20,
	["Nightblade"] = 23,
	["Old Glory"] = 20,
	["Nebula"] = 17,
	["Shark"] = 23,
	["Virtual"] = 18,
	["Cookiecane"] = 23,
	["Gingermint"] = 20,
	["Gemstone"] = 18,
	["Clockwork"] = 17,
	["Eternalcane"] = 20,
	["Ginger Luger"] = 20,
	["Lugercane"] = 20,
	["Pixel"] = 22,
	["Slasher"] = 20,
	["Gingerblade"] = 18,
	["Heat"] = 13,
	["BattleAxe II"] = 18,
	["Deathshard"] = 18,
	["Minty"] = 20,
	["Tides"] = 13,
	["Fang"] = 13,
	["Jinglegun"] = 17,
	["Spider"] = 13,
	["Chill"] = 13,
	["Bioblade"] = 13,
	["Vampire's Edge"] = 15,
	["Pumpking"] = 8,
	["Frostsaber"] = 10,
	["BattleAxe"] = 12,
	["Flames"] = 7,
	["Hallow's Edge"] = 8,
	["Ice Dragon"] = 7,
	["Ice Shard"] = 7,
	["Winter's Edge"] = 7,
	["Xmas"] = 8,
	["Hallow's Blade"] = 8,
	["Handsaw"] = 8,
	["Eternal"] = 8,
	["Eternal II"] = 8,
	["Eternal III"] = 10,
	["Eternal IV"] = 10,
	["Boneblade"] = 7,
	["Ghostblade"] = 7,
	["Eggblade"] = 5,
	["Frostbite"] = 7,
	["Prismatic"] = 7,
	["Saw"] = 7,
	["Snowflake"] = 5,
	["Peppermint"] = 4,
	["Cookieblade"] = 3,
	["Blue Seer"] = 3,
	["Purple Seer"] = 3,
	["Red Seer"] = 3,
	["Seer"] = 3,
	["Orange Seer"] = 2,
	["Yellow Seer"] = 2,
	["Chroma Traveler's Gun"] = 145000,
    ["Chroma Evergun"] = 57000,
    ["Chroma Evergreen"] = 27000,
    ["Chroma Vampire's Gun"] = 19000,
    ["Chroma Bauble"] = 16500,
    ["Chroma Constellation"] = 13500,
	["Chroma Sunrise"] = 5250,
	["Chroma Sunset"] = 2150,
    ["Chroma Watergun"] = 2700,
    ["Chroma Darkbringer"] = 95,
    ["Chroma Lightbringer"] = 90,
    ["Chroma Luger"] = 65,
    ["Chroma Laser"] = 62,
    ["Chroma Candleflame"] = 70,
    ["Chroma Elderwood Blade"] = 60,
    ["Chroma Swirly Gun"] = 62,
    ["Chroma Cookiecane"] = 60,
    ["Chroma Deathshard"] = 55,
    ["Chroma Heat"] = 50,
    ["Chroma Shark"] = 55,
    ["Chroma Slasher"] = 55,
    ["Chroma Tides"] = 50,
    ["Chroma Fang"] = 50,
    ["Chroma Gemstone"] = 50,
    ["Chroma Gingerblade"] = 40,
    ["Chroma Seer"] = 45,
    ["Chroma Boneblade"] = 40,
    ["Chroma Saw"] = 40,
	["Ghost"] = 10,
    ["America"] = 7,
    ["Blood"] = 8,
    ["Phaser"] = 5,
    ["Shadow"] = 6,
    ["Prince"] = 6,
    ["Cowboy"] = 4,
    ["Golden"] = 4,
    ["Splitter"] = 3,
    ["JD"] = 40,
    ["Latte Gun"] = 135,
    ["Latte Knife"] = 135,
    ["Cotton Candy"] = 40,
    ["Beach"] = 10,
    ["Cavern Knife"] = 8,
    ["Witched"] = 3,
    ["Skulls"] = 7,
    ["Icedriller"] = 5,
    ["Spectral Knife"] = 17,
    ["Vampire Gun"] = 12,
    ["Green Elite"] = 3,
    ["Santa's Spirit"] = 3,
    ["Aurora Gun"] = 8,
    ["Ginger Gun"] = 6,
    ["Blue Elite"] = 3,
    ["Ghost Knife"] = 5,
    ["Traveler Gun"] = 15,
    ["Broken"] = 7,
    ["Santa's Magic"] = 3,
    ["Red Scratch"] = 4,
    ["Red Fire"] = 1,
    ["Arctic Gun"] = 4,
    ["Icecracker"] = 1,
    ["Nightsky"] = 3,
    ["Blue Scratch"] = 2,
    ["Ghost Gun"] = 2,
    ["Rupture"] = 0,
    ["Tree Gun"] = 0,
    ["Tree Knife"] = 0,
    ["Web"] = 0,
    ["Chromatic Knife"] = 1,
    ["Cursed Knife"] = 0,
    ["Frostfade Knife"] = 1,
    ["Vampire Knife"] = 1,
    ["Cavern Gun"] = 1,
	["Bunnies"] = 0,
	["Aquarium (Gun)"] = 0,
	["Aquarium (knife)"] = 0,
    ["Cane"] = 300,
    ["Silent Night"] = 50,
    ["Aurora"] = 15,
    ["Icicles"] = 10,
    ["Dungeon"] = 27,
    ["Candy Swirl"] = 7,
    ["Toxic"] = 7,
    ["Vampire"] = 8,
    ["Snakebite"] = 7,
    ["Monster"] = 7,
    ["Magma"] = 5,
    ["Bats"] = 3,
	["Makeshift"] = 12,
    ["Green Marble"] = 4,
    ["Jack"] = 4,
    ["Orange Marble"] = 3,
    ["Floral"] = 3,
    ["Starry"] = 2,
    ["Darkknife"] = 1,
    ["Gingerbread"] = 1,
    ["Mummy"] = 1,
	["Zombified Knife"] = 65,
    ["Bones Gun"] = 55,
    ["Gingerbread Knife"] = 50,
    ["Brains Knife"] = 40,
    ["Sweater Knife"] = 35,
    ["Branches"] = 25,
    ["Frozen Gun"] = 22,
    ["Lights Gun"] = 20,
    ["Mummy Gun"] = 20,
    ["Zombie Gun"] = 20,
    ["Potion Knife"] = 17,
    ["Zombified Gun"] = 15,
    ["Potion"] = 6,
    ["Void"] = 8,
    ["Frozen Knife"] = 5,
    ["Gingerbread Gun"] = 5,
    ["Zombie Knife"] = 5,
    ["Lights Knife"] = 4,
    ["Mummy Knife"] = 4,
    ["Moons"] = 4,
    ["Webs"] = 3,
    ["Holly Gun"] = 3,
    ["Snowflake"] = 3,
    ["Wolf"] = 3,
    ["Vampire"] = 3,
    ["Nutcracker"] = 1,
    ["Snowman Gun"] = 1,
    ["Snowman Knife"] = 1,
    ["Snowy"] = 1,
    ["Wrapped Gun"] = 1,
    ["Wrapped Knife"] = 1,
    ["Gifted"] = 1,
    ["Cane"] = 575,
    ["Silent Night"] = 60,
    ["Aurora"] = 28,
    ["Icicles"] = 25,
    ["Dungeon"] = 20,
    ["Candy Swirl"] = 20,
    ["Toxic"] = 20,
    ["Snakebite"] = 17,
    ["Monster"] = 17,
    ["Magma"] = 10,
    ["Bats"] = 7,
    ["Green Marble"] = 7,
    ["Jack"] = 4,
    ["Orange Marble"] = 3,
    ["Floral"] = 2,
    ["Starry"] = 2,
    ["Darkknife"] = 1,
    ["Mummy"] = 1,
    ["Glitch2"] = 60,
    ["Glitch1"] = 60,
    ["Bats"] = 170,
    ["Gifts"] = 140,
    ["Pine"] = 140,
    ["Sparkle9"] = 35,
    ["Sparkle8"] = 25,
    ["Sparkle10"] = 25,
    ["Ghoulish"] = 25,
    ["Skool"] = 20,
    ["Sparkle7"] = 20,
    ["RIP"] = 18,
    ["Tailslide"] = 17,
    ["Coal"] = 15,
    ["Ollie"] = 15,
    ["Sidewinder"] = 15,
    ["Sparkle5"] = 13,
    ["Elf"] = 13,
    ["Grave"] = 12,
    ["CandyCorn"] = 10,
    ["Sparkle4"] = 8,
    ["Asteroid"] = 8,
    ["Euro"] = 8,
    ["Slime"] = 7,
    ["Grind"] = 6,
    ["Haunted"] = 5,
    ["Combat II"] = 5,
    ["Prism"] = 4,
    ["Zombie"] = 4,
    ["Snowman"] = 3,
    ["Wrapped"] = 3,
    ["Bones"] = 3,
    ["Brains"] = 3,
    ["Neon"] = 3,
    ["Ecto"] = 3,
    ["Witch"] = 3,
    ["Indy"] = 3,
    ["Hearts"] = 2,
    ["Tulip"] = 2,
    ["Goo"] = 2,
    ["Patrick"] = 2,
    ["Reptile"] = 2,
    ["Bunny"] = 1,
    ["Choco"] = 1,
    ["Roses"] = 1,
    ["Alex"] = 1,
    ["Corl"] = 1,
    ["Denis"] = 1,
    ["Ornament"] = 1,
    ["Ornament1"] = 1,
    ["Ornament2"] = 1,
    ["Passion"] = 1,
    ["Sketchy"] = 1,
    ["Sub"] = 1,
    ["Sweetheart"] = 1,
    ["Valentine"] = 1,
    ["2015"] = 1,
    ["Santa"] = 1,
    ["Infected"] = 1,
    ["TNL"] = 1,
	["Zombie Dog"] = 200,
    ["Elf"] = 120,
    ["Blue Pumpkin"] = 75,
    ["Black Cat"] = 60,
    ["Dogey"] = 60,
    ["Red Pumpkin"] = 55,
    ["Green Pumpkin"] = 45,
    ["Santa"] = 35,
    ["Jetstream"] = 35,
    ["Purple Pumpkin"] = 30,
    ["Vampire Bat"] = 30,
    ["Rudolph"] = 25,
    ["Red Pumpkin"] = 25, -- Duplicate name, kept the first one
    ["Eyeball"] = 25,
    ["Overseer Eye"] = 25,
    ["Nobledragon"] = 25,
    ["Pumpkin"] = 20,
    ["Piggy"] = 20,
    ["Green Pumpkin"] = 20, -- Duplicate name, kept the first one
    ["Reindeer"] = 20,
    ["Fairy"] = 20,
    ["Seahorsey"] = 18,
    ["Chilly"] = 17,
    ["Pengy"] = 17,
    ["Tankie"] = 15,
    ["<3"] = 12,
    ["Mechbug"] = 8,
    ["UFO"] = 7,
    ["Red Pumpkin"] = 5, -- Duplicate name, kept the first one
    ["Deathspeaker"] = 5,
    ["Blue Pumpkin"] = 4, -- Duplicate name, kept the first one
    ["Phoenix"] = 4,
    ["Frostbird"] = 3,
    ["Green Pumpkin"] = 2, -- Duplicate name, kept the first one
    ["Electro"] = 2,
    ["Sammy"] = 2,
    ["Steambird"] = 2,
    ["Badger"] = 1,
    ["Ice Phoenix"] = 1,
    ["Skelly"] = 1,
    ["Traveller"] = 1,
    ["Fire Bat"] = 1,
    ["Fire Cat"] = 1,
    ["Fire Bear"] = 1,
    ["Fire Bunny"] = 1,
    ["Fire Dog"] = 1,
    ["Fire Fox"] = 1,
    ["Fire Pig"] = 1,
    ["Ghosty"] = 1,
	["Chroma Fire Bunny"] = 20,
    ["Chroma Fire Cat"] = 20,
    ["Chroma Fire Dog"] = 18,
    ["Chroma Fire Fox"] = 17,
    ["Chroma Fire Bat"] = 15,
    ["Chroma Fire Pig"] = 13,
    ["Chroma Fire Bear"] = 12,
}
-- =======================
-- FUNCIONES BASE
-- =======================
local function GET_ITEM_VALUE(ITEM_NAME, IS_CHROMA)
    if IS_CHROMA then
        local CHROMA_NAME = "Chroma " .. ITEM_NAME
        if ancientValues[CHROMA_NAME] then
            return ancientValues[CHROMA_NAME]
        end
    end
    return ancientValues[ITEM_NAME]
end

local function UPDATE_OFFER_VALUES(YOC, YOT, TOC, TOT)
    if not (YOC and YOT and TOC and TOT) then return end

    local YOUR_TOTAL_VALUE, THEIR_TOTAL_VALUE = 0, 0

    -- YOUR OFFER
    for I = 1, 4 do
        local NEW_ITEM = YOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM and NEW_ITEM.Visible then
            local ITEM_NAME_OBJ = NEW_ITEM:FindFirstChild("ItemName")
            local AMOUNT_CONT = NEW_ITEM:FindFirstChild("Container")
            local TAGS = NEW_ITEM:FindFirstChild("Tags")
            local CHROMA_TAG = TAGS and TAGS:FindFirstChild("Chroma")

            if ITEM_NAME_OBJ and AMOUNT_CONT and CHROMA_TAG then
                local ITEM_NAME_LBL = ITEM_NAME_OBJ:FindFirstChild("Label")
                local AMOUNT_LBL = AMOUNT_CONT:FindFirstChild("Amount")
                local IS_CHROMA = CHROMA_TAG.Visible

                if ITEM_NAME_LBL and ITEM_NAME_LBL.Text ~= "" then
                    local ITEM_NAME = ITEM_NAME_LBL.Text
                    local AMOUNT = 1
                    if AMOUNT_LBL and AMOUNT_LBL.Text ~= "" then
                        local AMOUNT_TEXT = AMOUNT_LBL.Text
                        if string.sub(AMOUNT_TEXT, 1, 1) == "x" then
                            AMOUNT = tonumber(string.sub(AMOUNT_TEXT, 2)) or 1
                        end
                    end
                    local ITEM_VALUE = GET_ITEM_VALUE(ITEM_NAME, IS_CHROMA)
                    if ITEM_VALUE then
                        YOUR_TOTAL_VALUE += ITEM_VALUE * AMOUNT
                    end
                end
            end
        end
    end

    -- THEIR OFFER
    for I = 1, 4 do
        local NEW_ITEM = TOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM and NEW_ITEM.Visible then
            local ITEM_NAME_OBJ = NEW_ITEM:FindFirstChild("ItemName")
            local AMOUNT_CONT = NEW_ITEM:FindFirstChild("Container")
            local TAGS = NEW_ITEM:FindFirstChild("Tags")
            local CHROMA_TAG = TAGS and TAGS:FindFirstChild("Chroma")

            if ITEM_NAME_OBJ and AMOUNT_CONT and CHROMA_TAG then
                local ITEM_NAME_LBL = ITEM_NAME_OBJ:FindFirstChild("Label")
                local AMOUNT_LBL = AMOUNT_CONT:FindFirstChild("Amount")
                local IS_CHROMA = CHROMA_TAG.Visible

                if ITEM_NAME_LBL and ITEM_NAME_LBL.Text ~= "" then
                    local ITEM_NAME = ITEM_NAME_LBL.Text
                    local AMOUNT = 1
                    if AMOUNT_LBL and AMOUNT_LBL.Text ~= "" then
                        local AMOUNT_TEXT = AMOUNT_LBL.Text
                        if string.sub(AMOUNT_TEXT, 1, 1) == "x" then
                            AMOUNT = tonumber(string.sub(AMOUNT_TEXT, 2)) or 1
                        end
                    end
                    local ITEM_VALUE = GET_ITEM_VALUE(ITEM_NAME, IS_CHROMA)
                    if ITEM_VALUE then
                        THEIR_TOTAL_VALUE += ITEM_VALUE * AMOUNT
                    end
                end
            end
        end
    end

    YOT.Text = "Value: " .. YOUR_TOTAL_VALUE
    TOT.Text = "Value: " .. THEIR_TOTAL_VALUE

    if THEIR_TOTAL_VALUE > 0 then
        local PROFIT = THEIR_TOTAL_VALUE - YOUR_TOTAL_VALUE
        YOT.Text ..= " (Profit: " .. PROFIT .. ")"
    end
end

local function HOOK_TRADE(TG)
    if not TG then return end
    local CONT = TG:WaitForChild("Container", 5)
    if not CONT then return end
    local TR = CONT:WaitForChild("Trade", 5)
    if not TR then return end

    local YO = TR:WaitForChild("YourOffer", 5)
    local YOC = YO:WaitForChild("Container", 5)
    local YOT = YO:WaitForChild("Title", 5)

    local TO = TR:WaitForChild("TheirOffer", 5)
    local TOC = TO:WaitForChild("Container", 5)
    local TOT = TO:WaitForChild("Title", 5)

    -- Conexiones
    local function Update()
        UPDATE_OFFER_VALUES(YOC, YOT, TOC, TOT)
    end

    Update()

    for I = 1, 4 do
        local NEW_ITEM = YOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM then
            NEW_ITEM:GetPropertyChangedSignal("Visible"):Connect(Update)
        end
    end
    for I = 1, 4 do
        local NEW_ITEM = TOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM then
            NEW_ITEM:GetPropertyChangedSignal("Visible"):Connect(Update)
        end
    end
end

-- =======================
-- INICIO
-- =======================
local LP = game:GetService("Players").LocalPlayer
local PG = LP:WaitForChild("PlayerGui", 5)
if not PG then return end

-- PC
HOOK_TRADE(PG:FindFirstChild("TradeGUI"))
-- Móvil
HOOK_TRADE(PG:FindFirstChild("TradeGUI_Phone"))
