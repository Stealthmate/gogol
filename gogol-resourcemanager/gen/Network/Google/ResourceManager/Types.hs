{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types
    (
    -- * Service URL
      resourceManagerURL

    -- * GetIamPolicyRequest
    , GetIamPolicyRequest
    , getIamPolicyRequest

    -- * OrganizationOwner
    , OrganizationOwner
    , organizationOwner
    , ooDirectoryCustomerId

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions

    -- * Organization
    , Organization
    , organization
    , oOwner
    , oDisplayName
    , oOrganizationId

    -- * SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- * ListOrganizationsResponse
    , ListOrganizationsResponse
    , listOrganizationsResponse
    , lorNextPageToken
    , lorOrganizations

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- * ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- * ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

    -- * TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- * Empty
    , Empty
    , empty

    -- * Project
    , Project
    , project
    , pParent
    , pProjectNumber
    , pName
    , pLabels
    , pProjectId
    , pLifecycleState
    , pCreateTime

    -- * ProjectLabels
    , ProjectLabels
    , projectLabels
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types.Product
import           Network.Google.ResourceManager.Types.Sum

-- | URL referring to version 'v1beta1' of the Google Cloud Resource Manager API.
resourceManagerURL :: BaseUrl
resourceManagerURL
  = BaseUrl Https
      "https://cloudresourcemanager.googleapis.com/"
      443