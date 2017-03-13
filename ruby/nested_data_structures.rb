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
      "pens",
      "jacket",
      "backpack"
      ]
  },
  mathroom: {
    pretty_name: 'Math Class',
    student_count: {
      present: 7,
      absent: 1 
    },
    desk_contents: [
      "math_textbook",
      "math_notebook",
      "pencils",
      "backpack"
      ]
  }, 
  scienceroom: {
    pretty_name: 'Science Class',
    student_count: {
      present: 7,
      absent: 3
    },
    desk_contents: [
      "science_textbook",
      "science_notebook",
      "pens",
      "highlighters",
      "backpack"
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
classroom[:scienceroom][:desk_contents][1]


#add 1 student with a textbook and notebook for history class
classroom[:historyroom][:student_count][:present] = 1
classroom[:historyroom][:desk_contents].push('history_notebook', 'history_textbook')
classroom[:historyroom]


