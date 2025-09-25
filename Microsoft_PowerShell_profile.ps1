# =====================================================================
# PowerShell Profile - Windows 11
# Autor: Jerônimo
# Organização: Modular e com boas práticas
# =====================================================================

# ---------------------------
# Módulos e Aparência
# ---------------------------

# Ícones no terminal (substitui o "ls" nativo com ícones).
Import-Module -Name Terminal-Icons

# Autocompletar e histórico inteligente
Import-Module -Name PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Tema do prompt (Oh My Posh)
# Altere para o tema preferido (atomic, blueish, jandedobbeleer, etc.)
oh-my-posh init powershell --config="$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression

# ---------------------------
# Aliases Simples
# ---------------------------

Set-Alias he helm
Set-Alias d docker
Set-Alias k kubectl
Set-Alias g git
Set-Alias t terraform
Set-Alias vi vim
Set-Alias l Get-ChildItem
Set-Alias ll Get-ChildItem
Set-Alias kctx kubectx
Set-Alias kns kubens


# ---------------------------
# Funções de Navegação
# ---------------------------

function ws { Set-Location "C:\Workspace\" }
function  minhab{ Set-Location "C:\Workspace\profissional\ufdpar\minha-ufdpar\backend\" }
function  minhaf{ Set-Location "C:\Workspace\profissional\ufdpar\minha-ufdpar\frontend\" }
function  minham{ Set-Location "C:\Workspace\profissional\ufdpar\minha-ufdpar\mobile\" }
function proj { Set-Location "C:\Workspace\pessoal\projetos\fgas" }
function pers {    Set-Location "C:\Workspace\pessoal"}
function prof {    Set-Location "C:\Workspace\profissional"}
function uni {
    Set-Location "C:\Workspace\universidade"
}
function dock { Set-Location "C:\Workspace\docker" }
function dockmysql { Set-Location "C:\Workspace\docker\mysql" }
function dockpg { Set-Location "C:\Workspace\docker\postgres" }
function dockmongo { Set-Location "C:\Workspace\docker\mongo" }
function dockredis { Set-Location "C:\Workspace\docker\redis" }
function docknginx { Set-Location "C:\Workspace\docker\nginx" }
function docknode { Set-Location "C:\Workspace\docker\node" }
function dockpython { Set-Location "C:\Workspace\docker\python" }
function dockphp { Set-Location "C:\Workspace\docker\php" }

# ---------------------------
# Funções para Git
# ---------------------------

# Clone rápido
function gcl {
    param([string] $Url)
    git clone $Url
}

# Status
function gs { git status }

# Add, commit e push rápido
function gcoph {
    param([string] $CommitMessage = "changes")

    git add -A
    git commit -am $CommitMessage

    if ($LASTEXITCODE -eq 0) {
        git push
    }
}

# Função para 'git add', que aceita um parâmetro para o arquivo ou diretório
Function ga {
    param(
        [string] $FileOrDir
    )
    git add $FileOrDir
}
# Função para 'git log'
Function gl { git log}

# Função para 'git commit'
Function gcm {
    git commit -m 
}



# ---------------------------
# Funções para NPM
# ---------------------------

function i { npm install }


# ---------------------------
# Funções para Kubernetes
# ---------------------------

# Apply
function kaf {
    param([string] $File)
    k apply -f $File
}

# Get Pods
function kgp {
    param([string] $Namespace)

    if (-not $Namespace) {
        k get pods -A
    } else {
        k get pods -n $Namespace
    }
}

# Get Deployment
function kgd {
    param(
        [string] $Deployment,
        [string] $Namespace = "default"
    )
    k get deployment -n $Namespace $Deployment
}

# Refresh Credentials
function kcreds {
    param(
        [string] $ResourceGroup = "kubernetes",
        [string] $KubernetesCluster = "glzbcrt"
    )
    az aks get-credentials -g $ResourceGroup -n $KubernetesCluster --overwrite-existing
}

# ---------------------------
# Funções para Docker
# ---------------------------
function dcd { docker compose down }
function dcu { docker compose up -d }
function dcub { docker compose up -d --build }
function dcl { docker compose logs -f }
function dce { docker compose exec }



# ---------------------------
# Funções para Dev
# ---------------------------

# Abrir Visual Studio DevShell
function vs {
    Import-Module "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"    
    Enter-VsDevShell -VsInstanceId 933f0d0b -Arch amd64 -HostArch amd64
}

function grep {
    Get-ChildItem -Recurse | Select-String $args
}


# ---------------------------
# Atalhos de Teclado
# ---------------------------

# CTRL+B → abre diretório atual no Explorer
Set-PSReadLineKeyHandler -Chord Ctrl+b -ScriptBlock {
    Start-Process explorer.exe $pwd
}

# CTRL+G → ir direto para pasta de projetos
Set-PSReadLineKeyHandler -Chord Ctrl+g -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert("cd $env:DEV_ROOT\projects")
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}



# =====================================================================
# Fim do Profile
# =====================================================================
