from pathlib import Path
from os import remove
                 

p = Path(".")
def clean(p):
    for each in p.iterdir():
        each: Path
        if each.is_dir():
            clean(each)
        elif each.suffix == '.ibc':
            remove(str(each))
clean(p)
        
        
                  
        
