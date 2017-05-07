from PIL import Image
from numpy import array
import cv2
cascade_src = 'cars.xml'
car_cascade = cv2.CascadeClassifier(cascade_src)
n = 7
i = 0
while i<=n:
	temp = 0
	i+=1
	PROJECT_PATH = 'Image_dataset\\'
	PROJECT_PATH = PROJECT_PATH+str(i)+'.png'
	img = Image.open(PROJECT_PATH)
	img_array = array(img)
	gray = cv2.cvtColor(img_array, cv2.COLOR_BGR2GRAY)
	cars = car_cascade.detectMultiScale(gray, 1.1, 1)
	for (x,y,w,h) in cars:
    	        cv2.rectangle(img_array,(x,y),(x+w,y+h),(0,0,255),2)      
                temp = 1
	cv2.imshow('image', img_array)
	cv2.waitKey(0)
	cv2.destroyAllWindows()
	
	
