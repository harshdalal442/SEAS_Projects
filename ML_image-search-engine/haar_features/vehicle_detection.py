import cv2
from PIL import Image
from numpy import array

cascade_src = 'cars.xml'
car_cascade = cv2.CascadeClassifier(cascade_src)
i=1
n=18
while i<=n:
        PROJECT_PATH = 'Image_dataset\\'
        FINAL_PATH = PROJECT_PATH + str(i)
        if i>8:
                FINAL_PATH = FINAL_PATH + '.jpg'
        else:
                FINAL_PATH = FINAL_PATH + '.bmp'
        print FINAL_PATH
        img = Image.open(FINAL_PATH)
        img_array = array(img)
        gray = cv2.cvtColor(img_array, cv2.COLOR_BGR2GRAY)
        cars = car_cascade.detectMultiScale(gray, 1.1, 1)
        temp = 0
        for (x,y,w,h) in cars:
                cv2.rectangle(img_array,(x,y),(x+w,y+h),(0,0,255),2)
                temp = 1
        if temp == 1:
                toSave = 'cars\\' + str(i) + '.bmp'
                img.save(toSave)
        cv2.imshow('image', img_array)
        cv2.destroyAllWindows()
        i+=1
