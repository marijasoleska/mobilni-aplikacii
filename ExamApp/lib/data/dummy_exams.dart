import 'package:flutter/material.dart';
import '../models/exam.dart';

final List<Exam> dummyExams = [
  Exam(
    subject: 'Мобилни апликации',
    dateTime: DateTime(2026, 1, 20, 10, 0),
    rooms: ['лаб215', 'лаб2'],
  ),
  Exam(
    subject: 'Веб програмирање',
    dateTime: DateTime(2026, 1, 22, 9, 0),
    rooms: ['Лаб 3'],
  ),
  Exam(
    subject: 'Оперативни системи',
    dateTime: DateTime(2026, 1, 25, 12, 0),
    rooms: ['117'],
  ),
  Exam(
    subject: 'Бази на податоци',
    dateTime: DateTime(2025, 1, 28, 8, 30),
    rooms: ['лаб 200аб', 'лаб 200в'],
  ),
  Exam(
    subject: 'Софтверско инженерство',
    dateTime: DateTime(2025, 2, 2, 11, 0),
    rooms: ['Амфитеатар ФИНКИ'],
  ),
  Exam(
    subject: 'Компјутерски мрежи',
    dateTime: DateTime(2025, 2, 5, 10, 0),
    rooms: ['Амфитеатар Машински'],
  ),
  Exam(
    subject: 'Алгоритми и податочни структури',
    dateTime: DateTime(2025, 2, 7, 9, 0),
    rooms: ['лаб 13'],
  ),
  Exam(
    subject: 'Информациски системи',
    dateTime: DateTime(2025, 2, 10, 13, 0),
    rooms: ['лаб 205'],
  ),
  Exam(
    subject: 'Дискретна математика',
    dateTime: DateTime(2024, 12, 20, 10, 0),
    rooms: ['ФИНКИ мал Амфитеатар'],
  ),
  Exam(
    subject: 'Напредно програмирање',
    dateTime: DateTime(2024, 12, 18, 9, 30),
    rooms: ['лаб 13'],
  ),
];
