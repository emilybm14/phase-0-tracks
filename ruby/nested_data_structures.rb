#this is a nested data structure representing a classroom 
#includes homeroom, mathroom, scienceroom, historyroom 
#give each a pretty name, student count and desk_contents
#

classroom = {
  homeroom: {
    pretty_name: 'Homeroom',
    student_count: {
      present: 10,
      absent: 2 
    },
    desk_contents: [
      'pens',
      'jacket',
      'backpack'
      ]
  },
  mathroom: {
    pretty_name: 'Math Class',
    student_count: {
      present: 7,
      absent: 1 
    },
    desk_contents: [
      'math_textbook',
      'math_notebook',
      'pencil',
      'backpack'
      ]
  }, 
  scienceroom: {
    pretty_name: 'Science Class',
    student_count: {
      present: 7,
      absent: 3
    },
    desk_contents: [
      'science_textbook',
      'science_notebook',
      'pens',
      'highlighters',
      'backpack'
      ]
  },
  historyroom: {
    pretty_name: 'History Class',
    student_count: {
      present: 0,
      absent: 0 
    },
    desk_contents: []
  }
}

#print the notebook in the science class
p classroom[:scienceroom][:desk_contents][1]


# print empty history room 
# then add 1 student with a textbook and notebook for history class
p classroom[:historyroom]
classroom[:historyroom][:student_count][:present] = 1
classroom[:historyroom][:desk_contents].push('history_notebook', 'history_textbook')
p classroom[:historyroom]

# printout the pretty name for the homeroom
p classroom[:homeroom][:pretty_name]



