import pandas as pd
import re

df = pd.read_csv("dragon_ball_z.csv")

def clean(text):
    if pd.isna(text) or text == "-":
        return "none"
    text = str(text).lower()
    text = re.sub(r'[^a-z0-9 ]', '', text)
    return text.replace(" ", "_")

with open("base.pl", "w", encoding="utf-8") as f:
    for _, row in df.iterrows():
        linha = (
            f"character({clean(row['Name'])}, "
            f"{clean(row['Race'])}, "
            f"{clean(row['Gender'])}, "
            f"{int(row['Power Level'])}, "
            f"{clean(row['Speed'])}, "
            f"{clean(row['Special Attack'])}, "
            f"{clean(row['Transformation'])}).\n"
        )
        f.write(linha)
