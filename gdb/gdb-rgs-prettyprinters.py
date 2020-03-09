import gdb
# from bitstruct import *
# from collections import namedtuple


class FLGen2StatusPrinter:
    """docstring for FLGen2StatusPrinter"""
    def __init__(self, typename, val):
        self.typename = typename
        self.val = val

    def to_string(self):
        """Converts FLGen2Status bytes to string"""
        return '%s bytes: %s|%s|%s|%s \n%s' % (self.typename, self.createBitStrring(self.val))

    def createBitString(self, val):
        """Converts the status bytes in to individual bits"""
        self.bitString = 'VoltageError: %d '
                        'HeadError: %d '
                        'OutofTicket: %d '
                        'HeadIsUp: %d '
                        'Error: %d '
                        'PrinterBusy: %d '
                        'JobOverflow: %d '
                        'BufferOverflow: %d '
                        'LibraryLoadError: %d '
                        'DataError %d '
                        'LibraryRefError: %d '
                        'TemperatureError: %d '
                        'MissingIndex: %da'
                        'PrinterOffline: %d '
                        'FlashError: %d '
                        'PaperInChute: %d '
                        'LibraryCorrupted: %d '
                        'CommandError: %d 
                        'TicketLow: %d 
                        'PaperJam: %d 
                        'CutterError: %d 
                        'PrintMode: %d 
                        'Reset: %d 
                        'BarcodeDataAccess: %d 
                        'PrinterOpen: %d 
                        'XOFF: %d 
                        'AtTopOfForm: %d 
                        'ValidationNumDone: %d' % (val.voltageError)

gdb.pretty_printers['FLGen2Status'] = FLGen2StatusPrinter
