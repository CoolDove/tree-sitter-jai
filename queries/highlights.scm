[
  "if"
  "else"
  "for"
  "while"
  "return"
  "break"
  "continue"
  "defer"
  "remove"
] @keyword

(string) @string

(compiler_directive) @keyword.directive
"#type" @keyword.directive

(types) @type

(struct_declaration
  name: (identifier) @type
)

(named_parameters
  parameters: (parameter) @variable
)

[
 "+"
 "-"
 "*"
 "/"
 "%"
 "=="
 "!="
 "<"
 "<="
 ">"
 ">="
 "&&"
 "||"
 "!"
] @operator

(call_expression
  function: (identifier) @variable
) @function.call


(const_declaration
  name: (identifier) @constant
)
(enum_declaration
  name: (identifier) @constant
)

(struct_literal
  name: (identifier) @variable
)


(comment) @comment
(block_comment (block_comment_text) @comment)
