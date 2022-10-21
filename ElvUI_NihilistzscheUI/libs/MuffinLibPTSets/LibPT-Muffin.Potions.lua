--
-- Muffin.Potions
--
if not LibStub("LibPeriodicTable-3.1", true) then
    error("PT3 must be loaded before data")
end
LibStub("LibPeriodicTable-3.1"):AddData(
    "Muffin.Potion",
    "Rev: 24",
    {
        ["Muffin.Potion.Health"] = "118,858,929,1710,3928,4596,13446,17348,17349,18839,22829,23579,23822,28100,31676,31838,31839,31852,31853,32763,32784,32904,32905,32910,32947,33092,33447,33934,39327,39671,39971,41166,43531,43569,45277,57191,63144,63300,64994,76097,80040,88416,92954,92979,109223,115498,117415,118916,118917,127834,129196,136569,138486,140351,142325,144396,152494,152615",
        ["Muffin.Potion.Mana"] = "2455,3087,3385,3827,6149,13443,13444,17351,17352,18253,18841,22832,22850,23578,23823,28101,31677,31840,31841,31854,31855,32762,32783,32902,32903,32909,32948,33093,33448,33935,34440,35287,40067,40087,42545,43530,43570,45276,57192,57193,57194,63145,64993,76092,76098,109221,109222,118262,118278,127835,127846,140347,152495,152561",
        ["Muffin.Potion.Combo"] = "2456,9144,40077,40081,57099,67415,76094,109226,113585,127836,163082",
        ["Muffin.Potion.Buff"] = "22828,58145,58146,67944,76089,76095,92941,92943,98061,98063,109217,109218,109219,109220,118910,118911,118912,118913,118914,118915,122453,122454,122455,122456,127845,144397,152557,163222,163223,163224,163225",
        ["Muffin.Potion.Rage"] = "5631,5633,13442,54642,116275,118704,144398",
        ["Muffin.Potion.Water Breathing"] = "5996,18294,23871,25539,34130,37449,116271"
    }
)
