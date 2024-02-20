-- NOTE: This file is auto generated by ./sql-generator

-- UserTokenRepository.getByToken
SELECT DISTINCT
  "distinctAlias"."UserTokenEntity_id" AS "ids_UserTokenEntity_id"
FROM
  (
    SELECT
      "UserTokenEntity"."id" AS "UserTokenEntity_id",
      "UserTokenEntity"."userId" AS "UserTokenEntity_userId",
      "UserTokenEntity"."createdAt" AS "UserTokenEntity_createdAt",
      "UserTokenEntity"."updatedAt" AS "UserTokenEntity_updatedAt",
      "UserTokenEntity"."deviceType" AS "UserTokenEntity_deviceType",
      "UserTokenEntity"."deviceOS" AS "UserTokenEntity_deviceOS",
      "UserTokenEntity__UserTokenEntity_user"."id" AS "UserTokenEntity__UserTokenEntity_user_id",
      "UserTokenEntity__UserTokenEntity_user"."name" AS "UserTokenEntity__UserTokenEntity_user_name",
      "UserTokenEntity__UserTokenEntity_user"."avatarColor" AS "UserTokenEntity__UserTokenEntity_user_avatarColor",
      "UserTokenEntity__UserTokenEntity_user"."isAdmin" AS "UserTokenEntity__UserTokenEntity_user_isAdmin",
      "UserTokenEntity__UserTokenEntity_user"."email" AS "UserTokenEntity__UserTokenEntity_user_email",
      "UserTokenEntity__UserTokenEntity_user"."storageLabel" AS "UserTokenEntity__UserTokenEntity_user_storageLabel",
      "UserTokenEntity__UserTokenEntity_user"."oauthId" AS "UserTokenEntity__UserTokenEntity_user_oauthId",
      "UserTokenEntity__UserTokenEntity_user"."profileImagePath" AS "UserTokenEntity__UserTokenEntity_user_profileImagePath",
      "UserTokenEntity__UserTokenEntity_user"."shouldChangePassword" AS "UserTokenEntity__UserTokenEntity_user_shouldChangePassword",
      "UserTokenEntity__UserTokenEntity_user"."createdAt" AS "UserTokenEntity__UserTokenEntity_user_createdAt",
      "UserTokenEntity__UserTokenEntity_user"."deletedAt" AS "UserTokenEntity__UserTokenEntity_user_deletedAt",
      "UserTokenEntity__UserTokenEntity_user"."updatedAt" AS "UserTokenEntity__UserTokenEntity_user_updatedAt",
      "UserTokenEntity__UserTokenEntity_user"."memoriesEnabled" AS "UserTokenEntity__UserTokenEntity_user_memoriesEnabled",
      "UserTokenEntity__UserTokenEntity_user"."quotaSizeInBytes" AS "UserTokenEntity__UserTokenEntity_user_quotaSizeInBytes",
      "UserTokenEntity__UserTokenEntity_user"."quotaUsageInBytes" AS "UserTokenEntity__UserTokenEntity_user_quotaUsageInBytes"
    FROM
      "user_token" "UserTokenEntity"
      LEFT JOIN "users" "UserTokenEntity__UserTokenEntity_user" ON "UserTokenEntity__UserTokenEntity_user"."id" = "UserTokenEntity"."userId"
      AND (
        "UserTokenEntity__UserTokenEntity_user"."deletedAt" IS NULL
      )
    WHERE
      ("UserTokenEntity"."token" = $1)
  ) "distinctAlias"
ORDER BY
  "UserTokenEntity_id" ASC
LIMIT
  1

-- UserTokenRepository.delete
DELETE FROM "user_token"
WHERE
  "id" = $1
