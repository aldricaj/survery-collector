from pymongo import MongoClient

db = MongoClient('localhost', 27017)['survey_data']
def insert_data(collection_name, data):
    collection = db.collection[collection_name]
    collection.insert_one(data)

def get_data(collection_name, query=None):
    collection = db.collection[collection_name]
    return collection.find()

def get_available_collections():
    return db.collection_names()

