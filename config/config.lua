Config = {}
Config.TurboRequired = true -- require turbo to be installed
Config.PurgeSettings = {
    -- DEFAULT CAR VALUE
    ["default"] = {
        [1] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {-0.5, 0.05, 0.0},
            rotation = {40.0, -20.0, 0.0}
        },
        [2] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {0.5, 0.05, 0.0},
            rotation = {40.0, 20.0, 0.0}
        }
    },
    -- Model Name
    ["911r"] = {
        -- Nozzle Locations for all hoods
        [1] = {
            scale = 0.5,
            density = 3,
            color = {255, 60, 60},
            position = {-0.85, 0.45, -0.05},
            rotation = {40.0, -20.0, 0.0}
        },
        [2] = {
            scale = 0.5,
            density = 3,
            color = {255, 60, 60},
            position = {0.85, 0.45, -0.05},
            rotation = {40.0, 20.0, 0.0}
        }
    },
    ["tsgr20"] = {
        -- Nozzle Locations for all hoods
        [1] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {-0.85, 0.35, -0.07},
            rotation = {80.0, -20.0, 0.0}
        },
        [2] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {0.85, 0.35, -0.07},
            rotation = {80.0, 20.0, 0.0}
        },
        -- Nozzle Locations specific hoods/bonnets e.x. "hood_<mod index of hood>"
        ["hood_8"] = {
            [1] = {
                scale = 0.5,
                density = 3,
                color = {255, 255, 255},
                position = {-0.85, 0.35, -0.07},
                rotation = {80.0, -20.0, 0.0}
            },
            [2] = {
                scale = 0.5,
                density = 3,
                color = {255, 255, 255},
                position = {0.85, 0.35, -0.07},
                rotation = {80.0, 20.0, 0.0}
            }
        },
        ["hood_9"] = {
            [1] = {
                scale = 0.3,
                density = 3,
                color = {255, 255, 255},
                position = {-0.85, 0.35, -0.07},
                rotation = {80.0, -20.0, 0.0}
            },
            [2] = {
                scale = 0.3,
                density = 3,
                color = {255, 255, 255},
                position = {0.85, 0.35, -0.07},
                rotation = {80.0, 20.0, 0.0}
            },
            [3] = {
                scale = 0.5,
                density = 3,
                color = {255, 255, 255},
                position = {-0.40, 0.6, 0.07},
                rotation = {40.0, -20.0, 0.0}
            },
            [4] = {
                scale = 0.5,
                density = 3,
                color = {255, 255, 255},
                position = {0.40, 0.6, 0.07},
                rotation = {40.0, 20.0, 0.0}
            }
        }

    },
    ["db11"] = {
        -- Outer
        [1] = {
            scale = 0.25,
            density = 3,
            color = {255, 255, 255},
            position = {-0.7, -1.1, 0.2},
            rotation = {40.0, -20.0, 0.0}
        },
        [2] = {
            scale = 0.25,
            density = 3,
            color = {255, 255, 255},
            position = {0.7, -1.1, 0.2},
            rotation = {40.0, 20.0, 0.0}
        },
        ["hood_3"] = {
            -- Inner
            [1] = {
                scale = 0.25,
                density = 3,
                color = {255, 255, 255},
                position = {-0.7, -1.1, 0.2},
                rotation = {40.0, -20.0, 0.0}
            },
            [2] = {
                scale = 0.25,
                density = 3,
                color = {255, 255, 255},
                position = {0.7, -1.1, 0.2},
                rotation = {40.0, 20.0, 0.0}
            },
            [3] = {
                scale = 0.5,
                density = 3,
                -- Only supported for 'hood_X'; supports | "aerials", { r , g , b }
                color = "aerials",
                position = {-0.25, -1.1, 0.25},
                rotation = {40.0, -20.0, 0.0}
            },
            [4] = {
                scale = 0.5,
                density = 3,
                color = "aerials",
                position = {0.25, -1.1, 0.25},
                rotation = {40.0, 20.0, 0.0}
            }
        }
    },
    ["sunrise1"] = {
        [1] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {-0.5, 0.05, 0.0},
            rotation = {40.0, -20.0, 0.0}
        },
        [2] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {0.5, 0.05, 0.0},
            rotation = {40.0, 20.0, 0.0}
        },
        -- Outer
        ["hood_8"] = {
            [1] = {
                scale = 0.2,
                density = 3,
                color = {255, 255, 255},
                position = {-0.88, 0.4, -0.27},
                rotation = {150.0, -45.0, 0.0}
            },
            [2] = {
                scale = 0.2,
                density = 3,
                color = {255, 255, 255},
                position = {0.88, 0.4, -0.27},
                rotation = {150.0, 45.0, 0.0}
            },
            [3] = {
                scale = 0.5,
                density = 3,
                color = {255, 255, 255},
                position = {-0.40, 0.6, -0.02},
                rotation = {40.0, -20.0, 0.0}
            },
            [4] = {
                scale = 0.5,
                density = 3,
                color = {255, 255, 255},
                position = {0.40, 0.6, -0.02},
                rotation = {40.0, 20.0, 0.0}
            }
        }
    },
    ["rx7tunable"] = {
        [1] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {-0.5, 0.5, 0.0},
            rotation = {40.0, -30.0, 0.0}
        },
        [2] = {
            scale = 0.5,
            density = 3,
            color = {255, 255, 255},
            position = {0.5, 0.5, 0.0},
            rotation = {40.0, 30.0, 0.0}
        }

    }
}

Config.PurgeColors = {
    ["db11"] = {
        ["aerials_0"] = {182, 213, 135},
        ["aerials_1"] = {239, 112, 117},
        ["aerials_2"] = {244, 200, 64},
        ["aerials_3"] = {110, 249, 243}
    }
}
