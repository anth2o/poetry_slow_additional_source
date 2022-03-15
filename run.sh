set -e

rm -r venv || true
virtualenv -p python3 venv
source venv/bin/activate

rm poetry.lock || true
cp pyproject_without_mirror.toml pyproject.toml
echo "Without mirror"
poetry lock 

rm poetry.lock
cp pyproject_with_default_mirror.toml pyproject.toml
echo "With default mirror"
poetry lock

rm poetry.lock
cp pyproject_with_secondary_mirror.toml pyproject.toml
echo "With secondary mirror"
poetry lock

rm poetry.lock
rm pyproject.toml
