from glob import glob
import os
from fire import Fire

def createGT(img_dir):
    dirs = glob(img_dir + '/*')
    
    with open('gt_' + img_dir + '.txt','w',encoding='utf-8') as gt:
        for i in dirs:
            gt.write(i + '\t' + os.path.basename(i)[:-4] + '\n')

if __name__ == '__main__':
    Fire(createGT)