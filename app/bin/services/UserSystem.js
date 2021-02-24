const {
    User
} = require('../model/UserModel');
module.exports = () => {
    const getInfo = async () => {
        const result = await User.findAll();
        return {
            data: result
        };
    };

    const saveInfo = async () => {
        const data = {
            FirstName: 'Uwaila',
            LastName: 'Adams'
        };
        const result = await User.create(data);
        return {
            info: data.firstName + JSON.stringify(result)
        };
    };

    return {
        getInfo,
        saveInfo
    };
};