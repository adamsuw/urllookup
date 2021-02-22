const {
    Sequelize,
    DataTypes
} = require('sequelize');
const sequelize = new Sequelize({
    database: 'ahab-reactor',
    username: 'postgres',
    host: 'localhost',
    port: 5432,
    password: 'password10$',
    dialect: 'postgres',
    protocol: 'postgres',
    pool: {
        max: 30,
        min: 1,
        idle: 300000,
        acquire: 300000
    },
    logging: log => console.log('logging:', log)
});
const DISABLE_SEQUELIZE_DEFAULTS = {
    timestamps: false,
    freezeTableName: true,
    ssl: false,
};

const User = sequelize.define('Users', {
    ID: {
        type: DataTypes.BIGINT,
        primaryKey: true,
        autoIncrement: true
    },
    Username: {
        type: DataTypes.STRING
    },
    FirstName: {
        type: DataTypes.STRING
    },
    LastName: {
        type: DataTypes.STRING
    },
    FullName: {
        type: DataTypes.STRING
    },
    Password: {
        type: DataTypes.STRING
    },
    TransactionPin: {
        type: DataTypes.STRING
    },
    IsAuthenticated: {
        type: DataTypes.BOOLEAN
    },
    ForcePasswordChange: {
        type: DataTypes.BOOLEAN
    },
    LastLoginDate: {
        type: DataTypes.DATE
    },
    NumberOfFailedAttempts: {
        type: DataTypes.INTEGER
    },
    Email: {
        type: DataTypes.STRING
    },
    ActivationLink: {
        type: DataTypes.TEXT
    },
    //Parent properties
    InstitutionID: {
        type: DataTypes.BIGINT
    },
    InstitutionCode: {
        type: DataTypes.STRING
    },
    IsEnabled: {
        type: DataTypes.BOOLEAN
    },
    DateCreated: {
        type: DataTypes.DATE
    },
    DateLastModified: {
        type: DataTypes.DATE
    },
    Error: {
        type: DataTypes.STRING
    },
    CreatedBy: {
        type: DataTypes.STRING
    },
    LastModifiedBy: {
        type: DataTypes.STRING
    },
    Name: {
        type: DataTypes.STRING
    },
}, {
    tableName: 'Users'
}, DISABLE_SEQUELIZE_DEFAULTS);

// `sequelize.define` also returns the model
console.log(User === sequelize.models.User); // true

module.exports = {
    User
};