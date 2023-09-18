from libqtile.config import Group

# groups = [Group(i) for i in "123456789"]
groups = [Group(f"{i+1}", label="󰏃") for i in range(8)]
