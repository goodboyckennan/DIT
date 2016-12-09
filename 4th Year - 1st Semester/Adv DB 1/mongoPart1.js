db = db.getSibling('d14123582');

// REMOVE ALL DOCUMENTS IN COLLECTIONS
db.d14123582_schema.remove({});
db.result_collection.remove({});
db.pass_collection.remove({});
db.fail_collection.remove({});

// Add courses data
db.d14123582_schema.insertMany(
    [
        {
            _id: 1,
            name: 'Mary',
            surname: 'Murray',
            nationality: 'Irish',
            age: 45,
            courses: [
                {
                    courseid: 'DB',
                    coursename: 'Databases',
                    mark: 56,
                    examdate: new Date(2011, 10, 10)
                },
                {
                    courseid: 'MA',
                    coursename: 'Maths',
                    mark: 76,
                    examdate: new Date(2012, 11, 09)
                },
                {
                    courseid: 'PR',
                    coursename: 'Programming',
                    mark: 45,
                    examdate: new Date(2014, 07, 02)
                }
            ]
        },
        {
            _id: 2,
            name: 'Bill',
            surname: 'Bellichick',
            nationality: 'American',
            age: 32,
            courses: [
                {
                    courseid: 'DB',
                    coursename: 'Databases',
                    mark: 55,
                    examdate: new Date(2011, 10, 10)
                },
                {
                    courseid: 'MA',
                    coursename: 'Maths',
                    mark: 87,
                    examdate: new Date(2012, 11, 09)
                },
                {
                    courseid: 'PR',
                    coursename: 'Programming',
                    mark: 45,
                    examdate: new Date(2011, 10, 10)
                }
            ]
        },
        {
            _id: 3,
            name: 'Tom',
            surname: 'Brady',
            nationality: 'Canadian',
            age: 22,
            courses: [
                {
                    courseid: 'DB',
                    coursename: 'Databases',
                    mark: 34,
                    examdate: new Date(2012, 11, 09)
                },
                {
                    courseid: 'MA',
                    coursename: 'Maths',
                    mark: 56,
                    examdate: new Date(2014, 07, 02)
                }
            ]
        },
        {
            _id: 4,
            name: 'John',
            surname: 'Bale',
            nationality: 'English',
            age: 24,
            courses: [
                {
                    courseid: 'DB',
                    coursename: 'Databases',
                    mark: 71,
                    examdate: new Date(2011, 10, 10)
                },
                {
                    courseid: 'MA',
                    coursename: 'Maths',
                    mark: 88,
                    examdate: new Date(2011, 10, 10)
                },
                {
                    courseid: 'PR',
                    coursename: 'Programming',
                    mark: 95,
                    examdate: new Date(2012, 11, 09)
                }
            ]
        }
    ]
);

// 1. find students that failed the exam
db.d14123582_schema.aggregate([ 
    { $unwind: '$courses'}, 
    { $match: 
        { 'courses.mark': 
            { "$lt" : 40 } 
        } 
    }, 
    { $out: "fail_collection" } 
]);

// 2. Find people that passed each exams
db.d14123582_schema.aggregate([ 
    { $unwind: '$courses'}, 
    { $match: 
        { 'courses.mark': 
            { "$gte" : 40 } 
        } 
    },
    { $group:
        {
            _id: '$courses.courseid',
            avgMark: { $avg: '$courses.mark' }
        }
    }, 
    { $out: "pass_collection" } 
]);

// 3. Find student with highest average mark
db.d14123582_schema.aggregate([
    { $unwind: '$courses' },
    {
        $group: {
            _id: '$name',
            averageMark: { $avg: '$courses.mark'}
        }
    },
    { $sort: {averageMark: -1}},
    { $limit: 1},
    { $out: 'result_collection' }
]);

