local CUSTOM_PRESETS = Config.PurgeSettings
--------------------------------------------------------------------------------
-- local modelConfig = {}
-- local entityConfig = {}
--
-- local function AddVehicleModelNitroPurgeNozzle() end
-- local function RemoveVehicleModelNitroPurgeNozzle() end
-- local function SetVehicleModelNitroPurgeNozzleScale() end
-- local function SetVehicleModelNitroPurgeNozzleDensity() end
-- local function SetVehicleModelNitroPurgeNozzleColor() end
-- local function SetVehicleModelNitroPurgeNozzlePosition() end
-- local function SetVehicleModelNitroPurgeNozzleRotation() end
--
-- local function AddVehicleNitroPurgeNozzle() end
-- local function RemoveVehicleNitroPurgeNozzle() end
-- local function SetVehicleNitroPurgeNozzleScale() end
-- local function SetVehicleNitroPurgeNozzleDensity() end
-- local function SetVehicleNitroPurgeNozzleColor() end
-- local function SetVehicleNitroPurgeNozzlePosition() end
-- local function SetVehicleNitroPurgeNozzleRotation() end
--------------------------------------------------------------------------------
local vehicles = {}
local particles = {}

function IsVehicleNitroPurgeEnabled(vehicle)
    return vehicles[vehicle] == true
end

function SetVehicleNitroPurgeEnabled(vehicle, enabled)
    if IsVehicleNitroPurgeEnabled(vehicle) == enabled then
        return
    end
    local custom_settings = nil
    for key, _ in pairs(CUSTOM_PRESETS) do
        if GetHashKey(key) == GetEntityModel(vehicle) then
            custom_settings = key
            break
        end
    end
    if custom_settings == nil then
        custom_settings = "default"
    end
    if enabled then
        local bone = GetEntityBoneIndexByName(vehicle, 'bonnet')
        local pos = GetWorldPositionOfEntityBone(vehicle, bone)
        local off = GetOffsetFromEntityGivenWorldCoords(vehicle, pos.x, pos.y, pos.z)
        local ptfxs = {}
        local mod = GetVehicleMod(vehicle, 7)
        local aerial = GetVehicleMod(vehicle, 43)
        local colorRGB = {
        }
        
        if CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)] ~= nil then
            for i = 1, #CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)] do
                if CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].color == "aerials" then
                    if Config.PurgeColors[custom_settings][("aerials_%s"):format(aerial)] ~= nil then
                        colorRGB = Config.PurgeColors[custom_settings][("aerials_%s"):format(aerial)]
                    end
                else
                    colorRGB = {
                        CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].color[1],
                        CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].color[2],
                        CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].color[3]
                    }
                end
                -- (vehicle, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, density, r, g, b)
                table.insert(ptfxs, CreateVehiclePurgeSprayColored(vehicle, off.x +
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].position[1], off.y +
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].position[2], off.z +
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].position[3],
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].rotation[1],
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].rotation[2],
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].rotation[3],
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].scale,
                    CUSTOM_PRESETS[custom_settings][("hood_%s"):format(mod)][i].density,
                    colorRGB[1],
                    colorRGB[2],
                    colorRGB[3]))
            end

        else
            for i = 1, #CUSTOM_PRESETS[custom_settings] do
                            colorRGB={CUSTOM_PRESETS[custom_settings][i].color[1],
                            CUSTOM_PRESETS[custom_settings][i].color[2],
                            CUSTOM_PRESETS[custom_settings][i].color[3]}
                -- (vehicle, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, density, r, g, b)
                table.insert(ptfxs,
                    CreateVehiclePurgeSprayColored(vehicle, off.x + CUSTOM_PRESETS[custom_settings][i].position[1],
                        off.y + CUSTOM_PRESETS[custom_settings][i].position[2],
                        off.z + CUSTOM_PRESETS[custom_settings][i].position[3],
                        CUSTOM_PRESETS[custom_settings][i].rotation[1], CUSTOM_PRESETS[custom_settings][i].rotation[2],
                        CUSTOM_PRESETS[custom_settings][i].rotation[3], CUSTOM_PRESETS[custom_settings][i].scale,
                        CUSTOM_PRESETS[custom_settings][i].density, colorRGB[1],
                        colorRGB[2],colorRGB[3]))
            end
        end
        vehicles[vehicle] = true
        particles[vehicle] = ptfxs
    else
        if particles[vehicle] and #particles[vehicle] > 0 then
            for _, particleId in ipairs(particles[vehicle]) do
                StopParticleFxLooped(particleId)
            end
        end

        vehicles[vehicle] = nil
        particles[vehicle] = nil
    end
end
