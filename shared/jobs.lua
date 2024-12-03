---Job names must be lower case (top level table key)
---@type table<string, Job>
return {
    ['unemployed'] = {
        label = 'Civilian',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Freelancer',
                payment = 100
            },
            [1] = {
                name = 'Freelancer',
                payment = 100
            },
        },
    },

    ['police'] = {
        label = 'LSPD',
        type = 'leo',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Cadet',
                payment = 2000
            },
            [1] = {
                name = 'Probationary Officer',
                payment = 3000
            },
            [2] = {
                name = 'Officer',
                payment = 5000
            },
            [3] = {
                name = 'Senior Officer',
                payment = 7000
            },
            [4] = {
                name = 'Corporal',
                payment = 9000
            },
            [5] = {
                name = 'Sergeant',
                payment = 10000
            },
            [6] = {
                name = 'Head Sergeant',
                payment = 11000
            },
            [7] = {
                name = 'Lieutenant',
                payment = 13000
            },
            [8] = {
                name = 'Captain',
                payment = 14000,
                isboss = true,
                bankAuth = false,
            },
            [9] = {
                name = 'Commander',
                payment = 15000,
                isboss = true,
                bankAuth = false,
            },
            [10] = {
                name = 'Assistant Chief',
                isboss = true,
                bankAuth = true,
                payment = 16000
            },
            [11] = {
                name = 'Chief',
                isboss = true,
                bankAuth = true,
                payment = 17000
            }
        },
    },
    ['ambulance'] = {
        label = 'EMS',
        type = 'ems',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Trainee',
                payment = 1100
            },
            [1] = {
                name = 'EMT',
                payment = 2300
            },
            [2] = {
                name = 'Paramedic',
                payment = 3000
            },
            [3] = {
                name = 'Lead Paramedic',
                payment = 4500
            },
            [4] = {
                name = 'Gen Physician',
                payment = 6000
            },
            [5] = {
                name = 'Gen Surgeon',
                payment = 7500
            },
            [6] = {
                name = 'Chief Surgeon',
                payment = 9000
            },
            [7] = {
                name = 'Assistant Dean',
                isboss = true,
                bankAuth = true,
                payment = 11000
            },
            [8] = {
                name = 'Dean',
                isboss = true,
                bankAuth = true,
                payment = 15500
            }
        },
    },
    ['builder'] = {
        label = 'Builder',
        type = 'realestate',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 100
            },
            [1] = {
                name = 'House Sales',
                payment = 200
            },
            [2] = {
                name = 'Business Sales',
                payment = 400
            },
            [3] = {
                name = 'Manager',
                payment = 600,
                isboss = true,
                bankAuth = true,
            },
            [4] = {
                name = 'Boss',
                isboss = true,
                bankAuth = true,
                payment = 800
            },
            [5] = {
                name = 'Admin',
                isboss = true,
                bankAuth = true,
                payment = 8000
            },
        },
    },
    ['market'] = {
        label = 'Market',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Intern',
                payment = 100
            },
            [1] = {
                name = 'Cashier',
                payment = 200
            },
            [2] = {
                name = 'Stock Manager',
                payment = 400
            },
            [3] = {
                name = 'Manager',
                payment = 600,
            },
            [4] = {
                name = 'Boss',
                isboss = true,
                bankAuth = true,
                payment = 800
            },
            [5] = {
                name = 'Admin',
                isboss = true,
                bankAuth = true,
                payment = 3000
            },
        },
    },
    ['realestate'] = {
        label = 'Real Estate',
        type = 'realestate',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 1000
            },
            [1] = {
                name = 'House Sales',
                payment = 1500
            },
            [2] = {
                name = 'Business Sales',
                payment = 2500
            },
            [3] = {
                name = 'Manager',
                payment = 2800,
                isboss = true,
                bankAuth = true,
            },
            [4] = {
                name = 'Boss',
                isboss = true,
                bankAuth = true,
                payment = 2900
            },
            [5] = {
                name = 'Admin',
                isboss = true,
                bankAuth = true,
                payment = 3100
            },
        },
    },
    ['taxi'] = {
        label = 'Taxi',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 100
            },
            [1] = {
                name = 'Driver',
                payment = 200
            },
            [2] = {
                name = 'Event Driver',
                payment = 400
            },
            [3] = {
                name = 'Sales',
                payment = 600,
                isboss = true,
                bankAuth = true,
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 800
            },
        },
    },
    ['cardealer'] = {
        label = 'Vehicle Dealer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 1100
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 1700
            },
            [2] = {
                name = 'Business Sales',
                payment = 2200
            },
            [3] = {
                name = 'Manager',
                payment = 2700,
                isboss = true,
                bankAuth = true,
            },
            [4] = {
                name = 'Boss',
                isboss = true,
                bankAuth = true,
                payment = 3200
            },
            [5] = {
                name = 'Admin',
                isboss = true,
                bankAuth = true,
                payment = 800
            },
        },
    },
    ['secondhanddealer'] = {
        label = 'Second Hand Vehicle Dealer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125,
                isboss = true,
                bankAuth = true,
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Admin',
                isboss = true,
                bankAuth = true,
                payment = 800
            },
        },
    },
    ['snrbuns'] = {
        label = 'SNR Buns',
        type = 'burgershot',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Trainee', payment = 3500 },
            [1] = { name = 'Waiter', payment = 3800 },
            [2] = { name = 'Cook', payment = 4000 },
            [3] = { name = 'Manager', isboss = true, bankAuth = true, payment = 2000 },
            [4] = { name = 'Boss', isboss = true, bankAuth = true, payment = 2000 },
        },
    },
    ['mechanic'] = {
        label = 'Mechanic',
        type = 'mechanic',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 1100
            },
            [1] = {
                name = 'Novice',
                payment = 1600
            },
            [2] = {
                name = 'Experienced',
                payment = 2100
            },
            [3] = {
                name = 'Advanced',
                payment = 3100,
                isboss = true,
                bankAuth = true,
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 3300
            },
            [5] = {
                name = 'Boss',
                isboss = true,
                bankAuth = true,
                payment = 3600
            },
            [6] = {
                name = 'Admin',
                isboss = true,
                bankAuth = true,
                payment = 800
            },
        },
    },
    ['trucker'] = {
        label = 'Trucker',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Driver',
                payment = 100
            },
        },
    },
    ['tow'] = {
        label = 'Towing',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Driver',
                payment = 100
            },
        },
    },
    ['garbage'] = {
        label = 'Garbage',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Collector',
                payment = 100
            },
        },
    },
    ['vineyard'] = {
        label = 'Vineyard',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Picker',
                payment = 100
            },
        },
    },
    ['electrical'] = {
        label = 'Electrical',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Electrician',
                payment = 100
            },
        },
    },
    ['hunting'] = {
        label = 'Hunting',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Hunter',
                payment = 100
            },
        },
    },
    ['government'] = {
        label = 'Government',
        type = 'government',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Mayor',
                payment = 1000
            },
        },
    },
}