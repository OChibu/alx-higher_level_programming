#!/usr/bin/node
const request = require('request');

const url = 'https://jsonplaceholder.typicode.com/todos';

request.get(url, (error, response, body) => {
  if (error) {
    console.error(error);
  } else {
    const tasks = JSON.parse(body);

    const completedTasksByUser = {};

    tasks.forEach((task) => {
      if (task.completed) {
        const userId = task.userId;
        completedTasksByUser[userId] = completedTasksByUser[userId] ? completedTasksByUser[userId] + 1 : 1;
      }
    });

    console.log(completedTasksByUser);
  }
});

