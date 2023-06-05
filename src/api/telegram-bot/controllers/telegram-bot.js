'use strict';

/**
 * telegram-bot controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::telegram-bot.telegram-bot');
