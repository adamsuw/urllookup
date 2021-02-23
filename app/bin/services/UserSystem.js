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

    const saveInfo = () => {
        const data = {
            firstName: 'Uwaila',
            lastName: 'Adams'
        };
        User.create(data);
        return {
            info: data.firstName + ' Saved'
        };
    };

    return {
        getInfo,
        saveInfo
    };
};

