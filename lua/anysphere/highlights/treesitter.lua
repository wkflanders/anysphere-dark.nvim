local util = require("anysphere.util")

return function(hl, c, o, S)
	util.link("@comment", "Comment")

	util.link("@constant", "Constant")
	util.link("@constant.builtin", "Boolean")

	util.link("@string", "String")
	util.link("@character", "String")
	util.link("@string.regex", "String")
	util.link("@string.escape", "SpecialChar")

	util.link("@number", "Number")
	util.link("@boolean", "Boolean")
	util.link("@float", "Float")

	util.link("@keyword", "Keyword")
	util.link("@keyword.function", "Keyword")
	util.link("@keyword.operator", "Keyword")
	util.link("@keyword.return", "Keyword")
	util.link("@keyword.import", "Keyword")
	util.link("@conditional", "Conditional")
	util.link("@repeat", "Repeat")
	util.link("@exception", "Exception")
	util.link("@include", "Include")

	util.link("@type", "Type")
	util.link("@type.builtin", "Type")
	util.link("@type.qualifier", "Keyword")
	util.link("@namespace", "Type")
	util.link("@module", "Type")
	util.link("@tag", "Type")
	util.link("@storageclass", "StorageClass")

	util.link("@function", "Function")
	util.link("@function.call", "Function")
	util.link("@function.builtin", "Function")
	util.link("@method", "Function")
	util.link("@method.call", "Function")
	util.link("@constructor", "Function")

	util.link("@variable", "Identifier")
	util.link("@variable.builtin", "Constant")
	util.link("@variable.parameter", "Parameter")
	util.link("@field", "Field")
	util.link("@property", "Property")
	util.link("@attribute", "Property")
	util.link("@parameter", "Parameter")

	util.link("@operator", "Operator")
	util.link("@punctuation", "Delimiter")
	util.link("@punctuation.bracket", "Delimiter")
	util.link("@punctuation.delimiter", "Delimiter")
	util.link("@punctuation.special", "SpecialChar")

	util.link("@text", "Normal")
	util.link("@text.strong", "Bold")
	util.link("@text.emphasis", "Italic")
	util.link("@text.underline", "Underlined")
	util.link("@text.title", "Title")
	util.link("@text.literal", "String")
	util.link("@text.uri", "Underlined")

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
