local util = require("anysphere.util")

return function(hl, c, o, S)
	util.link("@comment", "Comment")
	util.link("@constant", "Constant")
	util.link("@string", "String")
	util.link("@number", "Number")
	util.link("@boolean", "Boolean")
	util.link("@function", "Function")
	util.link("@method", "Function")
	util.link("@keyword", "Keyword")
	util.link("@type", "Type")
	util.link("@variable", "Identifier")
	util.link("@field", "Identifier")
	util.link("@property", "Identifier")
	util.link("@parameter", "Identifier")
	util.link("@tag", "Tag")
	util.link("@attribute", "Type")
	util.link("@namespace", "Type")

	local legacy = {
		TSComment = "@comment",
		TSConditional = "@conditional",
		TSRepeat = "@repeat",
		TSException = "@exception",
		TSInclude = "@include",
		TSKeyword = "@keyword",
		TSKeywordFunction = "@keyword.function",
		TSKeywordOperator = "@keyword.operator",
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
		["@lsp.type.parameter"] = "@parameter",
		["@lsp.type.property"] = "@property",
		["@lsp.type.variable"] = "@variable",
		["@lsp.type.function"] = "@function",
		["@lsp.type.method"] = "@method",
		["@lsp.type.enumMember"] = "@constant",
		["@lsp.type.keyword"] = "@keyword",
		["@lsp.type.modifier"] = "@keyword",
		["@lsp.type.number"] = "@number",
		["@lsp.type.operator"] = "@operator",
		["@lsp.type.string"] = "@string",
		["@lsp.type.regexp"] = "@string.regex",
		["@lsp.type.namespace"] = "@namespace",
	}
	for a, b in pairs(lsp) do
		util.link(a, b)
	end
end
