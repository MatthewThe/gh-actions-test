import PyInstaller.utils.hooks

print("Trying to collect submodules for lxml.isoschematron")
PyInstaller.utils.hooks._collect_submodules('lxml.isoschematron', 'warn once')
print("Success??")