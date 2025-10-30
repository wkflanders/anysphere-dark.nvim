local util = require("anysphere.util")

return function(hl, c, o, S)
	hl["@comment"] = { fg = c.comment }

	hl["@constant"] = { fg = c.keyword_fg }
	hl["@constant.builtin"] = { fg = c.keyword_fg }

	hl["@string"] = { fg = c.string }
	hl["@character"] = { fg = c.string }
	hl["@string.regex"] = { fg = c.string }
	hl["@string.escape"] = { fg = c.string }

	hl["@number"] = { fg = c.number }
	hl["@boolean"] = { fg = c.keyword_fg }
	hl["@float"] = { fg = c.number }

	hl["@keyword"] = { fg = c.keyword_fg }
	hl["@keyword.function"] = { fg = c.keyword_fg }
	hl["@keyword.operator"] = { fg = c.keyword_fg }
	hl["@keyword.return"] = { fg = c.keyword_fg }
	hl["@keyword.import"] = { fg = c.keyword_fg }
	hl["@conditional"] = { fg = c.keyword_fg }
	hl["@repeat"] = { fg = c.keyword_fg }
	hl["@exception"] = { fg = c.keyword_fg }
	hl["@include"] = { fg = c.keyword_fg }

	hl["@type"] = { fg = c.type_fg }
	hl["@type.builtin"] = { fg = c.type_fg }
	hl["@type.qualifier"] = { fg = c.keyword_fg }
	hl["@namespace"] = { fg = c.type_fg }
	hl["@module"] = { fg = c.type_fg }
	hl["@tag"] = { fg = c.keyword_fg }
	hl["@storageclass"] = { fg = c.keyword_fg }

	hl["@function"] = { fg = c.function_fg }
	hl["@function.call"] = { fg = c.function_fg }
	hl["@function.builtin"] = { fg = c.function_fg }
	hl["@method"] = { fg = c.function_fg }
	hl["@method.call"] = { fg = c.function_fg }
	hl["@constructor"] = { fg = c.type_fg }

	hl["@variable"] = { fg = c.fg }
	hl["@variable.builtin"] = { fg = c.keyword_fg }
	hl["@variable.parameter"] = { fg = c.fg }
	hl["@field"] = { fg = c.property_fg }
	hl["@property"] = { fg = c.property_fg }
	hl["@attribute"] = { fg = c.property_fg }
	hl["@parameter"] = { fg = c.fg }

	hl["@operator"] = { fg = c.fg }
	hl["@punctuation"] = { fg = c.fg }
	hl["@punctuation.bracket"] = { fg = c.type_fg }
	hl["@punctuation.delimiter"] = { fg = c.fg }
	hl["@punctuation.special"] = { fg = c.type_fg }

	hl["@text"] = { fg = c.fg }
	hl["@text.strong"] = { bold = true }
	hl["@text.emphasis"] = { italic = true }
	hl["@text.underline"] = { underline = true }
	hl["@text.title"] = { fg = c.gold, bold = true }
	hl["@text.literal"] = { fg = c.string }
	hl["@text.uri"] = { fg = c.string, underline = true }

	local legacy = {
		TSComment = "@comment",
		TSConditional = "@conditional",
		TSRepeat = "@repeat",
		TSException = "@exception",
		TSInclude = "@include",
		TSKeyword = "@keyword",
		TSKeywordFunction = "@keyword.function",
		TSKeywordOperator = "@keyword.operator",
		TSKeywordReturn = "@keyword.return",
		TSFunction = "@function",
		TSMethod = "@method",
		TSConstructor = "@constructor",
		TSParameter = "@parameter",
		TSField = "@field",
		TSProperty = "@property",
		TSConstant = "@constant",
		TSConstantBuiltin = "@constant.builtin",
		TSNumber = "@number",
		TSBoolean = "@boolean",
		TSFloat = "@float",
		TSString = "@string",
		TSCharacter = "@character",
		TSOperator = "@operator",
		TSType = "@type",
		TSTypeBuiltin = "@type.builtin",
		TSNamespace = "@namespace",
		TSTag = "@tag",
		TSTagAttribute = "@tag.attribute",
		TSTagDelimiter = "@tag.delimiter",
		TSPunctDelimiter = "@punctuation.delimiter",
		TSPunctBracket = "@punctuation.bracket",
		TSPunctSpecial = "@punctuation.special",
		TSVariable = "@variable",
		TSVariableBuiltin = "@variable.builtin",
	}
	for a, b in pairs(legacy) do
		util.link(a, b)
	end

	local lsp = {
		["@lsp.type.class"] = "@type",
		["@lsp.type.enum"] = "@type",
		["@lsp.type.interface"] = "@type",
		["@lsp.type.struct"] = "@type",
		["@lsp.type.type"] = "@type",
		["@lsp.type.typeParameter"] = "@type",
		["@lsp.type.namespace"] = "@type",
		["@lsp.type.parameter"] = "@parameter",
		["@lsp.type.property"] = "@property",
		["@lsp.type.field"] = "@field",
		["@lsp.type.variable"] = "@variable",
		["@lsp.type.function"] = "@function",
		["@lsp.type.method"] = "@method",
		["@lsp.type.enumMember"] = "@constant",
		["@lsp.type.keyword"] = "@keyword",
		["@lsp.type.modifier"] = "@keyword",
		["@lsp.type.comment"] = "@comment",
		["@lsp.type.number"] = "@number",
		["@lsp.type.operator"] = "@operator",
		["@lsp.type.string"] = "@string",
		["@lsp.type.regexp"] = "@string.regex",
	}
	for a, b in pairs(lsp) do
		util.link(a, b)
	end

	hl["@lsp.mod.deprecated"] = { strikethrough = true }
end
