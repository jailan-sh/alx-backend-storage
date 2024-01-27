#!/usr/bin/env python3
"""  lists all documents in a collection"""
from pymongo import MongoClient


def list_all(mongo_collection):
    """ def list_all(mongo_collection)"""
    documents = mongo_collection.find({})
    if documents:
        return documents
    else:
        return []
