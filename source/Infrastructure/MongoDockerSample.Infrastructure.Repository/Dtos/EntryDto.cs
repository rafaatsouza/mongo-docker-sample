﻿using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson.Serialization.IdGenerators;
using System;

namespace MongoDockerSample.Infrastructure.Repository.Dtos
{
    internal class EntryDto
    {
        [BsonId(IdGenerator = typeof(GuidGenerator)), BsonRepresentation(BsonType.String)]
        public Guid Key { get; set; }

        public string Value { get; set; }

        public EntryDto(string value)
        {
            Key = Guid.NewGuid();
            Value = value;
        }
    }
}