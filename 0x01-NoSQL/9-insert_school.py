#!/usr/bin/env python3
""" inserts a new document"""
from pymongo import MongoClient


def insert_school(mongo_collection, **kwargs):
    """function that inserts a new document in a collection based on kwargs"""
    document = {}
    for k, v in kwargs.items():
        document[k] = v
    result = mongo_collection.insert_one(document)
    return result.inserted_id
