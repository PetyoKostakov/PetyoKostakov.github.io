---
layout: learning
title: "Getting Started with Redux"
kind: Course
date: 2019-08-16
organization: egghead.io
instructor: Dan Abramov
duration: "2h 1m"
description: >-
  Redux fundamentals taught by the library's own author — building the store from
  scratch before reaching for the real thing.
course_url: https://egghead.io/courses/getting-started-with-redux
---

## About the course

Thirty short lessons from Dan Abramov, who wrote Redux. The approach that makes it work
is that you implement each piece by hand — `createStore`, `combineReducers`, `connect` —
before being shown the library version. By the time the real API appears, there's
nothing mysterious left in it.

## What it covers

**Core principles**

- A single immutable state tree
- Describing every change as a plain action object
- Pure versus impure functions, and why reducers must be pure

**Reducers**

- Writing and testing a counter reducer
- Avoiding array mutation with `concat`, `slice` and the spread operator
- Avoiding object mutation with `Object.assign` and object spread
- Reducer composition, and extracting `combineReducers`

**The store**

- `getState`, `dispatch` and `subscribe`
- Implementing `createStore` from scratch
- Rebuilding `combineReducers` from scratch

**React bindings**

- Splitting presentational and container components
- Passing the store down explicitly, then via context
- `Provider` and `connect` from `react-redux`

## Notes

> Replace this with what actually stuck — the ideas you still use, and the ones you'd
> approach differently now.

