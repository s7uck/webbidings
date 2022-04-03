# $image = "~/winfetch.png"
# $noimage = $true

# Set the version of Windows to derive the logo from.
$logo = "Windows 7"

# Make the logo blink
$blink = $true

# Display all built-in info segments.
# $all = $true

# Add a custom info line
function info_username {
	return @{
		title = "Hi~ !"
		content = "${e}[1;33m{0}${e}[0m@${e}[1;33m{1}${e}[0m" -f [System.Environment]::UserName,$env:COMPUTERNAME
	}
}

function info_separator {
	$windowSize = (Get-Host).UI.RawUI.MaxWindowSize.Width
	$title = "—————————" * ($windowSize / 9)
	return @{
		title = $title
	}
}

function info_webbidings {
	$themeInfo = Get-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name SystemUsesLightTheme, AppsUseLightTheme
	switch ($true) {
		$themeInfo.SystemUsesLightTheme { $title = 'Webbidings Light' }
		$themeInfo.AppsUseLightTheme { $title = 'Webbidings Light' }
		Default { $title = 'Webbidings Dark' }
	}
	return @{
		content = ($title + ' {0}[0;40m{1}{0}[0;41m{1}{0}[0;42m{1}{0}[0;43m{1}{0}[0;44m{1}{0}[0;45m{1}{0}[0;46m{1}{0}[0;47m{1}{0}[0m') -f $e, '   '
	}
}

# Configure which disks are shown
$ShowDisks = @("C:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
$cpustyle = 'bartext'
$memorystyle = 'textbar'
$diskstyle = 'bartext'
$batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.

@(
	"username"
	"separator"
	"os"
	"kernel"
	"computer"
	"motherboard"
	"cpu"
	"gpu"
	"separator"
	"uptime"
	"cpu_usage"
	"memory"
	"disk"
	"battery"
	"resolution"
	"separator"
	"pwsh"
	"terminal"
	"pkgs"
	"separator"
	"locale"
	"weather"
	"separator"
	"local_ip"
	"public_ip"
	"separator"
	"blank"
	"webbidings"
)
