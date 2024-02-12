--[[
Copyright 2020 Vinícius B. Matos

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--]]

local function cycle(type, dir)
    mp.command('cycle '..type..' '..dir)
    if mp.get_property_number(type) == nil then
        mp.command('cycle '..type..' '..dir)
    end
end

mp.add_key_binding(nil, 'cycle_video_up',         function() cycle('video', 'up') end)
mp.add_key_binding(nil, 'cycle_audio_up',         function() cycle('audio', 'up') end)
mp.add_key_binding(nil, 'cycle_sub_up',           function() cycle('sub', 'up') end)
mp.add_key_binding(nil, 'cycle_secondary_sub_up', function() cycle('secondary-sid', 'up') end)

mp.add_key_binding(nil, 'cycle_video_down',         function() cycle('video', 'down') end)
mp.add_key_binding(nil, 'cycle_audio_down',         function() cycle('audio', 'down') end)
mp.add_key_binding(nil, 'cycle_sub_down',           function() cycle('sub', 'down') end)
mp.add_key_binding(nil, 'cycle_secondary_sub_down', function() cycle('secondary-sid', 'down') end)

--[[
EXAMPLE (input.conf):
#####################

_     script-binding cycle_video_up
SHARP script-binding cycle_audio_up
j     script-binding cycle_sub_up
J     script-binding cycle_sub_down

--]]
