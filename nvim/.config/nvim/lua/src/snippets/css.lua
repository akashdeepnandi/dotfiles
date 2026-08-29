local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

return {
  s('centerflex', {
    t { 'display: flex;', 'justify-content: center;', 'align-items: center;' },
  }),
}
