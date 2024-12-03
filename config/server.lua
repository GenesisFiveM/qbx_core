return {
    updateInterval = 5, -- how often to update player data in minutes

    money = {
        ---@alias MoneyType 'cash' | 'bank' | 'crypto'
        ---@alias Money {cash: number, bank: number, crypto: number}
        ---@type Money
        moneyTypes = { cash = 10000, bank = 100000, crypto = 0 }, -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
        dontAllowMinus = { 'cash', 'crypto' },                    -- Money that is not allowed going in minus
        paycheckTimeout = 10,                                     -- The time in minutes that it will give the paycheck
        paycheckSociety = false                                   -- If true paycheck will come from the society account that the player is employed at
    },

    player = {
        hungerRate = 4.2, -- Rate at which hunger goes down.
        thirstRate = 3.8, -- Rate at which thirst goes down.

        ---@enum BloodType
        bloodTypes = {
            'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-',
        },

        ---@alias UniqueIdType 'citizenid' | 'AccountNumber' | 'PhoneNumber' | 'FingerId' | 'WalletId' | 'SerialNumber'
        ---@type table<UniqueIdType, {valueFunction: function}>
        identifierTypes = {
            citizenid = {
                valueFunction = function()
                    return lib.string.random('1111')
                end,
            },
            AccountNumber = {
                valueFunction = function()
                    return 'US0' ..
                        math.random(1, 9) ..
                        'GEN' .. math.random(1111, 9999) .. math.random(1111, 9999) .. math.random(11, 99)
                end,
            },
            PhoneNumber = {
                valueFunction = function()
                    return math.random(100, 999) .. math.random(1000000, 9999999)
                end,
            },
            FingerId = {
                valueFunction = function()
                    return lib.string.random('...............')
                end,
            },
            WalletId = {
                valueFunction = function()
                    return 'GEN-' .. math.random(11111111, 99999999)
                end,
            },
            SerialNumber = {
                valueFunction = function()
                    return math.random(11111111, 99999999)
                end,
            },
        }
    },

    ---@alias TableName string
    ---@alias ColumnName string
    ---@type [TableName, ColumnName][]
    characterDataTables = {
        { 'properties',        'owner' },
        { 'bank_accounts_new', 'id' },
        { 'playerskins',       'citizenid' },
        { 'player_mails',      'citizenid' },
        { 'player_outfits',    'citizenid' },
        { 'player_vehicles',   'citizenid' },
        { 'player_groups',     'citizenid' },
        { 'players',           'citizenid' },
    }, -- Rows to be deleted when the character is deleted

    server = {
        pvp = true,                                -- Enable or disable pvp on the server (Ability to shoot other players)
        closed = false,                            -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
        closedReason = 'Server Closed',            -- Reason message to display when people can't join the server
        whitelist = false,                         -- Enable or disable whitelist on the server
        whitelistPermission = 'admin',             -- Permission that's able to enter the server when the whitelist is on
        discord = 'https://discord.gg/TuhEar9hKY', -- Discord invite link
        checkDuplicateLicense = true,              -- Check for duplicate rockstar license on join
        ---@deprecated use cfg ACE system instead
        permissions = { 'god', 'admin', 'mod' },   -- Add as many groups as you want here after creating them in your server.cfg
    },

    characters = {
        playersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
            ['license2:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'] = 5,
        },

        defaultNumberOfCharacters = 3, -- Define maximum amount of default characters (maximum 3 characters defined by default)
    },

    -- this configuration is for core events only. putting other webhooks here will have no effect
    logging = {
        webhook = {
            ['default'] = 'https://discord.com/api/webhooks/1313452023508635648/8VAq_eVphbBn0T6TbdHN4k_hjhUkSbN42NzQguxLLNiy-Q6VGYxSrWikqHrLEQazbMv0',     -- default
            ['joinleave'] = 'https://discord.com/api/webhooks/1313452438665170985/H9cgfWm75yBNY0MV1Si7ujivdhBpA-v2NIM_eYpnr8oTEM2C8JcwcRNXUYyM09Zh4iRn',   -- default
            ['ooc'] = 'https://discord.com/api/webhooks/1313452575487561780/dneZEiKRceLM1QBhE-d7L6OL_pDpfpKr3oc_sAINmTRnm57PzIRrTKTptySrrgladqQm',         -- default
            ['anticheat'] = 'https://discord.com/api/webhooks/1313452701018755132/g3-OeVyyDvxsU1i1Y-26wE_GEk5UoFCfLUtL6PZstNSNr3JOBo5-7Ql5rmJd6mBaI9Vz',   -- default
            ['playermoney'] = 'https://discord.com/api/webhooks/1313452819474284545/lHX5iaFsO6GPzTboWJ2JGpOBdSpI15GwZ51bv-pm8ZBbpt1r7ClkYbJ-WStZhkdn9KoR', -- default
        },
        role = {}                  -- Role to tag for high priority logs. Roles use <@%roleid> and users/channels are <@userid/channelid>
    },

    giveVehicleKeys = function(src, plate, vehicle)
        return exports.qbx_vehiclekeys:GiveKeys(src, vehicle)
    end,

    getSocietyAccount = function(accountName)
        return exports['Renewed-Banking']:getAccountMoney(accountName)
    end,

    removeSocietyMoney = function(accountName, payment)
        return exports['Renewed-Banking']:removeAccountMoney(accountName, payment)
    end,

    ---Paycheck function
    ---@param player Player Player object
    ---@param payment number Payment amount
    sendPaycheck = function(player, payment)
        -- player.Functions.AddMoney('bank', payment)
        -- Notify(player.PlayerData.source, locale('info.received_paycheck', payment))
        TriggerEvent("gen_paycheck:server:paycheckadd", player.PlayerData.citizenid, payment)
    end,
}