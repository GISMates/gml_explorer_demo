def classFactory(iface):  # pylint: disable=invalid-name
    """Load GMLExplorer class from file GMLExplorer.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    #
    try:
        import pandas as pd
    except ImportError:
        res = subprocess.call(['python3', "-m", "pip", "install", 'pandas'])
        if res == 0:
            import pandas as pd
        else:
            iface.messageBar().pushMessage('Wizualizacja GML',
                                           'Import modułu "pandas" zakończony niepowodzeniem, zalecamy manualne zainstalowanie zależności',
                                           level=Qgis.Warning, duration=3)
    try:
        import openpyxl
    except ImportError:
        res = subprocess.call(['python3', "-m", "pip", "install", 'openpyxl'])
        if res == 0:
            import openpyxl
        else:
            iface.messageBar().pushMessage('Wizualizacja GML',
                                           'Import modułu "openpyxl" zakończony niepowodzeniem, zalecamy manualne zainstalowanie zależności',
                                           level=Qgis.Warning, duration=3)
    try:
        import pyperclip
    except ImportError:
        res = subprocess.call(['python3', "-m", "pip", "install", 'pyperclip'])
        if res == 0:
            import pyperclip
        else:
            iface.messageBar().pushMessage('Wizualizacja GML',
                                           'Import modułu "pyperclip" zakończony niepowodzeniem, zalecamy manualne zainstalowanie zależności',
                                           level=Qgis.Warning, duration=3)
    try:
        import ezdxf
        from ezdxf.addons import geo, Importer
    except ImportError:
        res = subprocess.call(['python3', "-m", "pip", "install", 'ezdxf'])
        if res == 0:
            import ezdxf
            from ezdxf.addons import geo, Importer
        else:
            iface.messageBar().pushMessage('Wizualizacja GML',
                                           'Import modułu "ezdxf" zakończony niepowodzeniem, zalecamy manualne zainstalowanie zależności',
                                           level=Qgis.Warning, duration=3)
    from .gml_explorer import GMLExplorer
    return GMLExplorer(iface)
