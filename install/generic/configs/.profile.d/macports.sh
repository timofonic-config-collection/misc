
# (moved from .bash_profile where it was put automatically):

# MacPorts Installer addition on 2012-03-10_at_09:51:50: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH

prepend_path_uniq /opt/local/sbin /opt/local/bin

# Finished adapting your PATH environment variable for use with MacPorts.

############### manual additions below this point:

# not needed: PATH is used to figure out where to go.
#export MANPATH=/opt/local/man:$MANPATH

macportsup() {
    # update macports itself
    echo ""
    echo "executing: \"sudo port -v selfupdate\""
    sudo port -v selfupdate

    # upgrade everything already installed
    echo ""
    echo "executing: \"sudo port upgrade outdated\""
    sudo port upgrade outdated

    echo "if you are extremely happy with the results, or need disk space, run macportscleanup"
}

macportscleanup() {
    # uninstall dependencies that are no longer needed
    echo ""
    echo "executing: \"sudo port uninstall leaves\""
    sudo port uninstall leaves

    # uninstall inactive things
    echo ""
    echo "executing: \"sudo port uninstall inactive\""
    sudo port uninstall inactive

    echo ""
    echo "need more disk space? run repeatedly until there is nothing more to do:"
    echo "sudo port uninstall leaves; sudo port uninstall inactive"
}

alias macportsupdate=macportsup
alias macportsupgrade=macportsup

# more commands to do periodically:
#  http://guide.macports.org/chunked/using.common-tasks.html
# sudo port uninstall inactive
# sudo port echo leaves  -> port installed leaves -> port uninstall leaves
