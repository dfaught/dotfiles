import gdb


class GdbColors(gdb.Function):
    def __init__(cls):
        cls.colors = {0 : "\[\e[30m\]",
                      1 : "\[\e[31m\]",
                      2 : "\[\e[32m\]",
                      3 : "\[\e[33m\]",
                      4 : "\[\e[34m\]",
                      5 : "\[\e[35m\]",
                      6 : "\[\e[36m\]",
                      7 : "\[\e[37m\]",
                      'rst' : "\[\e[0m\]",
                      'bld' : "\[\e[1m\]",
                      'und' : "\[\e[4m\]"}

    @classmethod
    def Color(cls, code):
        """Returns the ansi color code associated with the defined colors

        :code: color code
        :returns: ansi color code

        """
        return cls.colors[code]

    @classmethod
    def Reset(cls):
        """TODO: Docstring for resetColor.
        :returns: TODO

        """
        return "\[\e[0m\]"

    @classmethod
    def Bold(cls):
        """TODO: Docstring for boldColor.

        :arg1: TODO
        :returns: TODO

        """
        return "\[\e[1m\]"

    @classmethod
    def Underline(cls):
        """TODO: Docstring for boldColor.

        :arg1: TODO
        :returns: TODO

        """
        return "\[\e[1m\]"
