from bs4 import BeautifulSoup
import requests
print('bs4')
url = 'https://www.geeksforgeeks.org/courses/'
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

courses = soup.find_all(class_='course-name')
prices = soup.find_all(class_='price')
for course, price in zip(courses, prices):
    course_name = course.text
    course_price = price.text
    print(f'{course_name}: {course_price}')
