local util = require("anysphere.util")

return function(hl, c, o, S)
	util.link("@comment", "Comment")
	util.link("@constant", "Constant")
	util.link("@constant.builtin", "Constant")
	util.link("@string", "String")
	util.link("@number", "Number")
	util.link("@boolean", "Boolean")

	util.link("@keyword", "Keyword")
	util.link("@keyword.function", "Keyword")
	util.link("@keyword.operator", "Keyword")
	util.link("@keyword.return", "Keyword")
	util.link("@keyword.import", "Keyword")
	util.link("@type.qualifier", "Keyword")

	util.link("@type", "Type")
	util.link("@type.builtin", "Type")
	util.link("@namespace", "Type")
	util.link("@module", "Type")
	util.link("@tag", "Type")

	util.link("@function", "Function")
	util.link("@function.call", "Function")
	util.link("@method", "Function")
	util.link("@constructor", "Function")

	util.link("@variable", "Identifier")
	util.link("@field", "Field")
	util.link("@property", "Property")
	util.link("@attribute", "Property")
	util.link("@parameter", "Parameter")

	util.link("@character", "String")
	util.link("@string.regex", "String")
	util.link("@string.escape", "String")

	util.link("@operator", "Operator")
	util.link("@punctuation", "Delimiter")
	util.link("@punctuation.bracket", "Delimiter")
	util.link("@punctuation.delimiter", "Delimiter")

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
		["@lsp.type.number"] = "@number",
		["@lsp.type.operator"] = "@operator",
		["@lsp.type.string"] = "@string",
		["@lsp.type.regexp"] = "@string.regex",
	}
	for a, b in pairs(lsp) do
		util.link(a, b)
	end
end
