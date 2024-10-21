tools=(
    "nvim"
    "brew"
    "code"
)

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

for t in "${tools[@]}"; do
    if command -v "$t" &> /dev/null; then
        echo "[${GREEN}✓${NC}] $t is installed"
    else
        echo "[${RED}✗${NC}] $t is not installed"
    fi
done
