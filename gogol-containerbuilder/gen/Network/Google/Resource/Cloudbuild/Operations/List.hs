{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Cloudbuild.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ <https://cloud.google.com/container-builder/docs/ Google Cloud Container Builder API Reference> for @cloudbuild.operations.list@.
module Network.Google.Resource.Cloudbuild.Operations.List
    (
    -- * REST Resource
      OperationsListResource

    -- * Creating a Request
    , operationsList
    , OperationsList

    -- * Request Lenses
    , olXgafv
    , olUploadProtocol
    , olPp
    , olAccessToken
    , olUploadType
    , olBearerToken
    , olName
    , olFilter
    , olPageToken
    , olPageSize
    , olCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.operations.list@ method which the
-- 'OperationsList' request conforms to.
type OperationsListResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ 'operationsList' smart constructor.
data OperationsList = OperationsList'
    { _olXgafv          :: !(Maybe Xgafv)
    , _olUploadProtocol :: !(Maybe Text)
    , _olPp             :: !Bool
    , _olAccessToken    :: !(Maybe Text)
    , _olUploadType     :: !(Maybe Text)
    , _olBearerToken    :: !(Maybe Text)
    , _olName           :: !Text
    , _olFilter         :: !(Maybe Text)
    , _olPageToken      :: !(Maybe Text)
    , _olPageSize       :: !(Maybe (Textual Int32))
    , _olCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olXgafv'
--
-- * 'olUploadProtocol'
--
-- * 'olPp'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olBearerToken'
--
-- * 'olName'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olPageSize'
--
-- * 'olCallback'
operationsList
    :: Text -- ^ 'olName'
    -> OperationsList
operationsList pOlName_ =
    OperationsList'
    { _olXgafv = Nothing
    , _olUploadProtocol = Nothing
    , _olPp = True
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olBearerToken = Nothing
    , _olName = pOlName_
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olPageSize = Nothing
    , _olCallback = Nothing
    }

-- | V1 error format.
olXgafv :: Lens' OperationsList (Maybe Xgafv)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OperationsList (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | Pretty-print response.
olPp :: Lens' OperationsList Bool
olPp = lens _olPp (\ s a -> s{_olPp = a})

-- | OAuth access token.
olAccessToken :: Lens' OperationsList (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OperationsList (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | OAuth bearer token.
olBearerToken :: Lens' OperationsList (Maybe Text)
olBearerToken
  = lens _olBearerToken
      (\ s a -> s{_olBearerToken = a})

-- | The name of the operation collection.
olName :: Lens' OperationsList Text
olName = lens _olName (\ s a -> s{_olName = a})

-- | The standard list filter.
olFilter :: Lens' OperationsList (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | The standard list page token.
olPageToken :: Lens' OperationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | The standard list page size.
olPageSize :: Lens' OperationsList (Maybe Int32)
olPageSize
  = lens _olPageSize (\ s a -> s{_olPageSize = a}) .
      mapping _Coerce

-- | JSONP
olCallback :: Lens' OperationsList (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

instance GoogleRequest OperationsList where
        type Rs OperationsList = ListOperationsResponse
        type Scopes OperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OperationsList'{..}
          = go _olName _olXgafv _olUploadProtocol (Just _olPp)
              _olAccessToken
              _olUploadType
              _olBearerToken
              _olFilter
              _olPageToken
              _olPageSize
              _olCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient (Proxy :: Proxy OperationsListResource)
                      mempty
