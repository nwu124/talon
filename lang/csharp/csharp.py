from talon import Context, Module, actions, settings

ctx = Context()
mod = Module()
ctx.matches = r"""
tag: user.csharp
"""
ctx.lists["user.code_common_function"] = {
    # Used as "funk <phrase>"
    "integer": "int.TryParse",
    "print": "Console.WriteLine",
    "string": ".ToString",
}

# Types
csharp_types = {
    "boolean": "bool",
    "byte": "byte",
    #"sbyte": "sbyte",
    "char": "char",
    "decimal": "decimal",
    "double": "double",
    "float": "float",
    "int": "int",
    #"uint": "uint",
    #"nint": "nint",
    #"nuint": "nuint",
    "long": "long",
    #"ulong": "ulong",
    "short": "short",
    #"ushort": "ushort",

    "void": "void",
    "var": "var",

    "object": "object",
    "string": "string",
    "dynamic": "dynamic",
}

# Structures
csharp_structures = {
    "stack": "Stack",
    "cu": "Queue",    
    "cue": "Queue",    
    "queue": "Queue",    
    "list": "List",

    "priority cu": "PriorityQueue",
    "priority cue": "PriorityQueue",
    "priority queue": "PriorityQueue",
    "dictionary": "Dictionary",
    "sorted dictionary": "SortedDictionary",
    "hash set": "HashSet",
    "sorted set": "SortedSet",
    "link to list": "LinkedList",
    "linked list": "LinkedList",
    "ray list": "ArrayList",
    "array list": "ArrayList",

    # Commonly used classes
    "string builder": "StringBuilder",
    "ray": "Array",
    "array": "Array",
}

terms = csharp_types.copy()
terms.update(csharp_structures)

ctx.lists["user.code_type"] = terms

mod.list("csharp_structures", desc="C# Generic Data Structures")
ctx.lists["self.csharp_structures"] = csharp_structures

@ctx.action_class("user")
class UserActions:
    def code_operator_indirection():           actions.auto_insert('*')
    def code_operator_address_of():            actions.auto_insert('&')
    def code_operator_structure_dereference(): actions.auto_insert('->')
    def code_operator_lambda():                actions.auto_insert('=>')
    def code_operator_subscript():
        actions.user.insert_between('[', ']')
    def code_operator_assignment():                      actions.auto_insert(' = ')
    def code_operator_subtraction():                     actions.auto_insert(' - ')
    def code_operator_subtraction_assignment():          actions.auto_insert(' -= ')
    def code_operator_addition():                        actions.auto_insert(' + ')
    def code_operator_addition_assignment():             actions.auto_insert(' += ')
    def code_operator_multiplication():                  actions.auto_insert(' * ')
    def code_operator_multiplication_assignment():       actions.auto_insert(' *= ')
    #action(user.code_operator_exponent): " ** "
    def code_operator_division():                        actions.auto_insert(' / ')
    def code_operator_division_assignment():             actions.auto_insert(' /= ')
    def code_operator_modulo():                          actions.auto_insert(' % ')
    def code_operator_modulo_assignment():               actions.auto_insert(' %= ')
    def code_operator_equal():                           actions.auto_insert(' == ')
    def code_operator_not_equal():                       actions.auto_insert(' != ')
    def code_operator_greater_than():                    actions.auto_insert(' > ')
    def code_operator_greater_than_or_equal_to():        actions.auto_insert(' >= ')
    def code_operator_less_than():                       actions.auto_insert(' < ')
    def code_operator_less_than_or_equal_to():           actions.auto_insert(' <= ')
    def code_operator_and():                             actions.auto_insert(' && ')
    def code_operator_or():                              actions.auto_insert(' || ')
    def code_operator_bitwise_and():                     actions.auto_insert(' & ')
    def code_operator_bitwise_and_assignment():          actions.auto_insert(' &= ')
    def code_operator_bitwise_or():                      actions.auto_insert(' | ')
    def code_operator_bitwise_or_assignment():           actions.auto_insert(' |= ')
    def code_operator_bitwise_exclusive_or():            actions.auto_insert(' ^ ')
    def code_operator_bitwise_exclusive_or_assignment(): actions.auto_insert(' ^= ')
    def code_operator_bitwise_left_shift():              actions.auto_insert(' << ')
    def code_operator_bitwise_left_shift_assignment():   actions.auto_insert(' <<= ')
    def code_operator_bitwise_right_shift():             actions.auto_insert(' >> ')
    def code_operator_bitwise_right_shift_assignment():  actions.auto_insert(' >>= ')
    def code_block():
        actions.insert('{}')
        actions.key('left enter enter up tab')

    def code_self():
        actions.auto_insert('this')

    def code_operator_object_accessor():
        actions.auto_insert(".")

    def code_insert_null():        actions.auto_insert('null')
    def code_insert_is_null():     actions.auto_insert(' == null ')
    def code_insert_is_not_null(): actions.auto_insert(' != null')
    def code_state_if():
        actions.user.insert_between('if (', ')')
    def code_state_else_if():
        actions.user.insert_between('else if (', ')')
    def code_state_else():
        actions.insert('else {\n')
    def code_state_switch():
        actions.user.insert_between('switch (', ')')
    def code_state_case():
        actions.insert('case \nbreak;')
        actions.edit.up()
    def code_state_for(): 
        actions.user.insert_between('for (', ')')
    def code_state_for_each():
        actions.insert('foreach () ')
        actions.key('left')
        actions.edit.word_left()
        actions.key('space')
        actions.edit.left()
    def code_state_go_to(): actions.auto_insert('go to ')
    def code_state_while():
        actions.user.insert_between('while (', ')')
    def code_state_return():   actions.auto_insert('return ')
    def code_break():          actions.auto_insert('break;')
    def code_next():           actions.auto_insert('continue;')
    def code_insert_true():           actions.auto_insert('true')
    def code_insert_false():          actions.auto_insert('false')
    def code_define_class():     actions.auto_insert('class ')
    def code_import():         actions.auto_insert('using ')
    def code_comment_line_prefix():        actions.auto_insert('// ')
    def code_comment_block_prefix(): actions.auto_insert('/* ')
    def code_comment_block_suffix(): actions.auto_insert('*/')
    def code_insert_function(text: str, selection: str):
        text += f"({selection or ''})"
        actions.user.paste(text)
        actions.edit.left()

    def code_private_function(text: str):
        """Inserts private function declaration"""
        result = "private void {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_private_static_function(text: str):
        """Inserts private static function"""
        result = "private static void {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_protected_function(text: str):
        result = "private void {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_protected_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_protected_static_function(text: str):
        result = "protected static void {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_protected_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_public_function(text: str):
        result = "public void {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_public_static_function(text: str):
        result = "public static void {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)
