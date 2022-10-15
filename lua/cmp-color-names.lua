local M      = {}
local source = {}

function source:is_available()           return true          end
function source:get_debug_name()         return 'color_names' end
function source:get_keyword_pattern()    return [[\k\+]]      end
function source:get_trigger_characters() return { '.' }       end

-- -- X11 / web color names
local color_names_table = {
  {label = 'White'}, {label = 'Snow'}, {label = 'Ivory'}, {label = 'Linen'},
  {label = 'AntiqueWhite'}, {label = 'Beige'}, {label = 'WhiteSmoke'},
  {label = 'LavenderBlush'}, {label = 'OldLace'}, {label = 'AliceBlue'},
  {label = 'SeaShell'}, {label = 'GhostWhite'}, {label = 'Honeydew'},
  {label = 'FloralWhite'}, {label = 'Azure'}, {label = 'MintCream'},
  {label = 'Black'}, {label = 'DarkSlateGray'}, {label = 'DimGray'},
  {label = 'SlateGray'}, {label = 'Gray'}, {label = 'LightSlateGray'},
  {label = 'Silver'}, {label = 'LightGray'}, {label = 'Gainsboro'},
  {label = 'Pink'}, {label = 'LightPink'}, {label = 'HotPink'},
  {label = 'PaleVioletRed'}, {label = 'DeepPink'}, {label = 'MediumVioletRed'},
  {label = 'Indigo'}, {label = 'Purple'}, {label = 'DarkMagenta'},
  {label = 'DarkViolet'}, {label = 'DarkSlateBlue'}, {label = 'BlueViolet'},
  {label = 'DarkOrchid'}, {label = 'Fuchsia'}, {label = 'Magenta'},
  {label = 'SlateBlue'}, {label = 'MediumSlateBlue'}, {label = 'MediumOrchid'},
  {label = 'MediumPurple'}, {label = 'Orchid'}, {label = 'Violet'},
  {label = 'Plum'}, {label = 'Thistle'}, {label = 'Lavender'},
  {label = 'DarkRed'}, {label = 'Red'}, {label = 'Firebrick'},
  {label = 'Crimson'}, {label = 'IndianRed'}, {label = 'LightCoral'},
  {label = 'Salmon'}, {label = 'DarkSalmon'}, {label = 'LightSalmon'},
  {label = 'OrangeRed'}, {label = 'Tomato'}, {label = 'DarkOrange'},
  {label = 'Coral'}, {label = 'Orange'}, {label = 'DarkKhaki'},
  {label = 'Gold'}, {label = 'Khaki'}, {label = 'PeachPuff'},
  {label = 'Yellow'}, {label = 'PaleGoldenRod'}, {label = 'Moccasin'},
  {label = 'PapayaWhip'}, {label = 'LightGoldenRodYellow'},
  {label = 'LemonChiffon'}, {label = 'LightYellow'}, {label = 'MidnightBlue'},
  {label = 'Navy'}, {label = 'DarkBlue'}, {label = 'MediumBlue'},
  {label = 'Blue'}, {label = 'RoyalBlue'}, {label = 'SteelBlue'},
  {label = 'DodgerBlue'}, {label = 'DeepSkyBlue'}, {label = 'CornFlowerBlue'},
  {label = 'SkyBlue'}, {label = 'LightSkyBlue'}, {label = 'LightSteelBlue'},
  {label = 'LightBlue'}, {label = 'PowderBlue'}, {label = 'Maroon'},
  {label = 'Brown'}, {label = 'SaddleBrown'}, {label = 'Sienna'},
  {label = 'Chocolate'}, {label = 'DarkGoldenRod'}, {label = 'Peru'},
  {label = 'RosyBrown'}, {label = 'GoldenRod'}, {label = 'SandyBrown'},
  {label = 'Tan'}, {label = 'BurlyWood'}, {label = 'Wheat'},
  {label = 'NavajoWhite'}, {label = 'Bisque'}, {label = 'BlanchedAlmond'},
  {label = 'Cornsilk'}, {label = 'Teal'}, {label = 'DarkCyan'},
  {label = 'LightSeaGreen'}, {label = 'CadetBlue'}, {label = 'DarkTurquoise'},
  {label = 'MediumTurquoise'}, {label = 'Turquoise'}, {label = 'Aqua'},
  {label = 'Cyan'}, {label = 'Aquamarine'}, {label = 'PaleTurquoise'},
  {label = 'LightCyan'}, {label = 'DarkGreen'}, {label = 'Green'},
  {label = 'DarkOliveGreen'}, {label = 'ForestGreen'}, {label = 'SeaGreen'},
  {label = 'Olive'}, {label = 'OliveDrab'}, {label = 'MediumSeaGreen'},
  {label = 'LimeGreen'}, {label = 'Lime'}, {label = 'SpringGreen'},
  {label = 'MediumSpringGreen'}, {label = 'DarkSeaGreen'},
  {label = 'MediumAquamarine'}, {label = 'YellowGreen'},
  {label = 'LawnGreen'}, {label = 'Chartreuse'}, {label = 'LightGreen'},
  {label = 'GreenYellow'}, {label = 'PaleGreen'}
}

function source:complete(_, callback)         callback(color_names_table) end
function source:resolve(completion, callback) callback(completion)        end
function source:execute(completion, callback) callback(completion)        end

M.setup = function()
  require('cmp').register_source('color_names', source)
end

return M
