import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react';
import axios from 'axios';
import jwtDecode from 'jwt-decode';

interface ReturnBasicInterFace {
  data: boolean;
  result: string;
}

interface DecodedInfoInterFace {
  sub: string;
  exp: number; //유효시간
  userId: number; //유저아이디
  username: string; //유저이름
}

interface ReturnMyInfoInterFace {
  data: {
    currentMoney: number;
    nickname: string;
    totalStockReturn: number;
  };
  result: string;
}

interface ReturnUsersSearchInterFace {
  data: Array<{
    account: string;
    nickname: string;
    profileImagePath: string;
  }>;
  result: string;
}

interface ReturnUsersRandomInterFace {
  data: {
    account: string;
    nickname: string;
    profileImagePath: string;
  };
  result: string;
}

interface ReturnUsersLogoutInterFace {
  data: boolean;
  result: string;
}

interface ReturnTravelInfoInterFace {
  data: {
    profileImagePath: string;
    nickname: string;
    introduction: string;
    totalCash: number;
  };
}

interface ReturnBankInterFace {
  data: {
    currentMoney: number;
  };
  result: string;
}

interface ReturnBankListInterFace {
  data: Array<{
    bankId: number;
    endDate: string;
    isPaid: true;
    price: number;
    startDate: string;
  }>;
  result: string;
}

interface ReturnRankListInterFace {
  data: Array<{
    nickname: string;
    profileImagePath: string;
    totalMoney: number;
  }>;
  result: string;
}

interface ReturnActionListInterFace {
  data: [
    {
      assetResDto: {
        assetId: number
        assetName: string;
        assetLevel: string;
        assetCategory: string;
        assetNameKor: string;
      },
      auctionId :string;
      nickname : string;
      price: number;
    }
  ];
}

interface UpdateStateInterFace {
  nickname: string;
  password: string;
  introduction: string;
  profileImagePath: string;
}

interface ReturnInfoInterFace {
  data: {
    dateList: [
      {
        date: string;
      }
    ];
    stockList: [
      {
        kind: string;
        price: number;
        stockId: number;
      }
    ];
  };
}
interface ReturnStockListInterFace {
  data: {
    euro: Array<{
      nationalCode: string;
      date: string;
      price: number;
    }>;
    gold: Array<{
      standardType: string;
      date: string;
      price: number;
    }>;
    jyp: Array<{
      nationalCode: string;
      date: string;
      price: number;
    }>;
    oil: Array<{
      standardType: string;
      date: string;
      price: number;
    }>;
    stockList: Array<{
      stockId: number;
      kind: string;
      price: number;
    }>;
    usd: Array<{
      nationalCode: string;
      date: string;
      price: number;
    }>;
  };
  result: string;
}
interface ReturnBuyNewsInterFace {
  data: {
    content: string;
    date: string;
    kind: string;
  };
  result: string;
}
interface ReturnNewsListInterFace {
  data: [
    {
      content: string;
      date: string;
      kind: string;
    }
  ];
  result: string;
}

interface CommonTradeStockType {
  stockAmount: number;
  stockId: number | undefined;
}

interface ReturnLotteryInterFace {
  data: {
    ranking: number;
    money: number;
  };
  result: string;
}

interface ReturnCommonTradeStockType {
  data: {
    dealType: string;
    price: number;
    amount: number;
    kind: string;
  };
  result: string;
}
interface ReturnGotchaInterFace {
  data: {
    assetCategory: string;
    assetId: number;
    assetLevel: string;
    assetName: string;
    assetNameKor: string;
  };
  result: string;
}

interface ReturnMyRoomAsset {
  data: Array<{
    userAssetId: number;
    assetName: string;
    assetLevel: string;
    assetNameKor: string;
    pos_x: number;
    pos_y: number;
    pos_z: number;
    rot_x: number;
    rot_y: number;
    rot_z: number;
  }>;
  result: string;
}
interface ReturnInven {
  data: Array<{
    userAssetId: number;
    assetName: string;
    assetLevel: string;
    assetNameKor: string;
    assetCategory: string;
    isAuctioned: string;
  }>;
  result: string;
}

interface PutMypage {
  pos_x: number;
  pos_y: number;
  pos_z: number;
  rot_x: number;
  rot_y: number;
  rot_z: number;
  userAssetId: number;
}

const fetchAccessToken = async () => {
  const accessToken: string | null = localStorage.getItem('accessToken');

  if (accessToken != null) {
    // 토큰 만료상태 확인
    const decode: DecodedInfoInterFace = jwtDecode(accessToken);
    const nowDate: number = new Date().getTime() / 1000;
    // 토큰 만료시간이 지났다면
    if (decode.exp < nowDate) {
      // 리프레쉬 토큰 발급 서버 요청
      const { data } = await axios({
        url: `${process.env.REACT_APP_API_URL}refresh`,
        method: 'POST',
        headers: {
          'x-refresh-token': localStorage.getItem('refreshToken')
        }
      });
      // 엑세스 토큰 갱신 로컬스토리지 넣어주기
      localStorage.setItem('accessToken', data.data.accessToken);
      return data.data.accessToken;
    } else {
      // 유효기간이 싱싱할때
      return localStorage.getItem('accessToken');
    }
  } else {
    // 토큰이 null 일때
    return;
  }
};

export const Api = createApi({
  reducerPath: 'Api',
  tagTypes: ['UserApi', 'BankApi', 'StockApi', 'NewsApi', 'MypageApi', 'InvenApi', 'GotchaApi', 'AuctionApi'],
  baseQuery: fetchBaseQuery({
    baseUrl: process.env.REACT_APP_API_URL,
    prepareHeaders: async (headers) => {
      // By default, if we have a token in the store, let's use that for authenticated requests
      const token = await fetchAccessToken();
      if (token) {
        headers.set('authorization', `Bearer ${token}`);
      }
      return headers;
    }
  }),

  endpoints: (builder) => ({
    // ------------- 유저 -------------

    // 1. 나의 로그인 정보
    getUsersInfo: builder.query<ReturnMyInfoInterFace, string>({
      query: () => '/users',
      providesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),

    // 2. 회원 검색
    getUsersSearch: builder.query<ReturnUsersSearchInterFace, string>({
      query: (keyword) => `/users?search=${keyword}`,
      providesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),

    // 3.랜덤 유저 방문
    getUsersRandom: builder.query<ReturnUsersRandomInterFace, string>({
      query: () => `/users/random`,
      providesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),

    // 4. 로그아웃
    getUsersLogout: builder.query<ReturnUsersLogoutInterFace, string>({
      query: () => `/logout/redirect`,
      providesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),

    // 5. 닉네임 중복확인
    getUsersNickname: builder.query<ReturnBasicInterFace, string>({
      query: (nickname) => `/users/nickname/${nickname}`,
      providesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),
    // 6. 회원정보수정
    putUsersInfo: builder.mutation<ReturnBasicInterFace, UpdateStateInterFace>({
      query: (data) => {
        return {
          url: `/users`,
          method: 'PUT',
          body: data
        };
      },
      invalidatesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),

    getUsersTravelInfo: builder.query<ReturnTravelInfoInterFace, string>({
      query: (nickname) => `/users/info/${nickname}`,
      providesTags: (result, error, arg) => {
        return [{ type: 'UserApi' }];
      }
    }),

    // ------------- 은행 -------------

    // 1. 내 통장 잔고
    getBank: builder.query<ReturnBankInterFace, string>({
      query: () => `/bank`,
      providesTags: (result, error, arg) => {
        return [{ type: 'BankApi' }, { type: 'UserApi' }];
      }
    }),

    // 2. 예금 하기
    postBank: builder.mutation<ReturnBasicInterFace, number>({
      query: (price) => {
        return {
          url: `/bank`,
          method: 'POST',
          body: {
            price: price
          }
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'BankApi' }, { type: 'UserApi' }]
    }),

    // 3. 예금 리스트
    getBankList: builder.query<ReturnBankListInterFace, string>({
      query: () => `/bank/list`,
      providesTags: (result, error, arg) => {
        return [{ type: 'BankApi' }, { type: 'UserApi' }];
      }
    }),

    // 4. 출금 하기
    deleteBank: builder.mutation<ReturnBasicInterFace, number>({
      query: (bankId) => {
        return {
          url: `/bank/${bankId}`,
          method: 'Delete'
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'BankApi' }, { type: 'UserApi' }]
    }),

    // 5. 송금 하기
    postBankTransfer: builder.mutation<ReturnBasicInterFace, { money: number; receiver: string }>({
      query: (body) => {
        console.log(body);

        return {
          url: `/bank/transfer`,
          method: 'Post',
          body: body
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'BankApi' }, { type: 'UserApi' }]
    }),

    // ------------- 뉴스 -------------
    // 1. 현재 뉴스 리스트 및 날짜
    getNewsInfo: builder.query<ReturnInfoInterFace, string>({
      query: () => `/info`,
      providesTags: (result, error, arg) => {
        return [{ type: 'NewsApi' }];
      }
    }),
    // 2. 선택한 뉴스 구입
    postNewsBuy: builder.mutation<ReturnBuyNewsInterFace, number>({
      query: (stockId) => {
        return {
          url: `/info/buy`,
          method: 'POST',
          body: {
            stockId
          }
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'NewsApi' }, { type: 'UserApi' }]
    }),
    // 3. 보유한 뉴스 리스트
    getNewsList: builder.query<ReturnNewsListInterFace, string>({
      query: () => {
        return {
          url: `/info/mine`,
          method: 'GET'
        };
      },
      providesTags: (result, error, arg) => {
        return [{ type: 'NewsApi' }];
      }
    }),
    // ------------- 주식 -------------

    // 1. 현재 주식 정보 리스트
    getStock: builder.query<ReturnStockListInterFace, string>({
      query: () => `/stock`,
      providesTags: (result, error, arg) => {
        return [{ type: 'StockApi' }];
      }
    }),

    // 2. 선택한 주식 차트 및 나의 주식 정보
    getStockSelect: builder.query<ReturnStockListInterFace, number>({
      query: (stockId) => `/stock/${stockId}`,
      providesTags: (result, error, arg) => {
        return [{ type: 'StockApi' }];
      }
    }),

    // 3. 주식 매수
    postStock: builder.mutation<ReturnCommonTradeStockType, CommonTradeStockType>({
      query: (body) => {
        return {
          url: `/stock/`,
          method: 'POST',
          body: body
        };
      },

      invalidatesTags: (result, error, arg) => [{ type: 'UserApi' }, { type: 'StockApi' }]
    }),

    // 4. 주식 매도
    deleteStock: builder.mutation<ReturnCommonTradeStockType, any>({
      query: (body) => {
        return {
          url: `/stock/`,
          method: 'DELETE',
          body: body
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'UserApi' }, { type: 'StockApi' }]
    }),

    // ------------- 랭킹 -------------------
    getRank: builder.query<ReturnRankListInterFace, string>({
      query: () => `/rank`,
      providesTags: (result, error, arg) => {
        return [];
      }
    }),

    // ----------- 미니게임 ------------
    // 1. 스피드 복권 버전
    postMiniGameBright: builder.mutation<ReturnLotteryInterFace, string>({
      query: (body) => {
        return {
          url: `/mini/bright`,
          method: 'Post',
          body: body
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'UserApi' }]
    }),

    // 2. 어둠의 복권 버전
    postMiniGameDark: builder.mutation<ReturnLotteryInterFace, string>({
      query: (body) => {
        return {
          url: `/mini/dark`,
          method: 'Post',
          body: body
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'UserApi' }]
    }),

    // ------------- 마이페이지 -------------------
    //  1. 마이 룸 반환
    getMypage: builder.query<ReturnMyRoomAsset, string>({
      query: () => `/mypage/${localStorage.getItem('nickname')}`,
      providesTags: (result, error, arg) => {
        return [{ type: 'MypageApi' }];
      }
    }),
    //  2. 인벤토리에 있는 에셋 마이룸에 넣기
    postMypage: builder.mutation<ReturnBasicInterFace, number>({
      query: (myAssetId) => {
        return {
          url: `/mypage/${myAssetId}`,
          method: 'POST'
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'MypageApi' }, { type: 'InvenApi' }]
    }),
    //  3. 인벤토리에 있는 에셋 마이룸에 넣기
    deleteMypage: builder.mutation<ReturnBasicInterFace, number>({
      query: (myAssetId) => {
        return {
          url: `/mypage/${myAssetId}`,
          method: 'DELETE'
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'MypageApi' }, { type: 'InvenApi' }]
    }),
    //  4. 마이 룸 내의 에셋 위치 옮기기
    putMypage: builder.mutation<ReturnBasicInterFace, PutMypage>({
      query: (body) => {
        return {
          url: `/mypage/`,
          method: 'PUT',
          body: body
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'MypageApi' }, { type: 'InvenApi' }]
    }),

    // ------------- 창고 -------------------
    //  1. 창고에 있는 물품 리스트 반환
    getStorage: builder.query<ReturnInven, string>({
      query: () => `/storage`,
      providesTags: (result, error, arg) => {
        return [{ type: 'InvenApi' }];
      }
    }),
    //  2. 창고에 있는 물품 되팔기
    postStorageResale: builder.mutation<ReturnBasicInterFace, number>({
      query: (userAssetId) => {
        return {
          url: `/storage/resale/${userAssetId}`,
          method: 'POST'
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'MypageApi' }, { type: 'InvenApi' }, { type: 'UserApi' }]
    }),
    // ----------- 뽑기상점 ------------
    postGotchaLevel: builder.mutation<ReturnGotchaInterFace, string>({
      query: (gotchaLevel) => {
        return {
          url: `/store/level/${gotchaLevel}`,
          method: 'Post'
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'GotchaApi' }, { type: 'UserApi' }]
    }),

    // ----------- 경매 ------------
    // 1. 경매 물품 리스트 조회
    getAuction: builder.query<ReturnActionListInterFace, string>({
      query: () => `/auction`,
      providesTags: (result, error, arg) => {
        return [{ type: 'AuctionApi' }];
      }
    }),

    // 2. 내가 올린 경매 물품 리스트 조회
    getAuctionMy: builder.query<ReturnActionListInterFace, string>({
      query: () => `/auction/my`,
      providesTags: (result, error, arg) => {
        return [{ type: 'AuctionApi' }];
      }
    }),

    // 3. 구매
    postAuctionAuctionId: builder.mutation<ReturnBasicInterFace, string>({
      query: (auctionId) => {
        return {
          url: `/auction/${auctionId}`,
          method: 'Post'
        };
      },
      invalidatesTags: (result, error, arg) => [{ type: 'AuctionApi' }]
    }),
    // 4. 판매 취소
    deleteAuctionAuctionId: builder.mutation<ReturnBasicInterFace, string>({
      query: (auctionId) => {
        return {
          url: `/auction/${auctionId}`,
          method: 'Delete'
        };
      },
      invalidatesTags: (result, error, arg) =>[ { type: 'AuctionApi' }]
    }),
  })
});

// 임시저장
export const {
  // ------------- 유저 -------------
  useGetUsersInfoQuery,
  useLazyGetUsersInfoQuery,
  useLazyGetUsersSearchQuery,
  useLazyGetUsersRandomQuery,
  useLazyGetUsersLogoutQuery,
  useLazyGetUsersNicknameQuery,
  usePutUsersInfoMutation,
  useGetUsersTravelInfoQuery,

  // ------------- 은행 -------------
  useGetBankQuery,
  useLazyGetBankQuery,
  usePostBankMutation,
  useGetBankListQuery,
  useDeleteBankMutation,
  usePostBankTransferMutation,

  // ------------- 뉴스 -------------
  useGetNewsInfoQuery,
  usePostNewsBuyMutation,
  useGetNewsListQuery,

  // ------------- 주식 -------------
  useGetStockQuery,
  useLazyGetStockQuery,
  useGetStockSelectQuery,
  useLazyGetStockSelectQuery,
  usePostStockMutation,
  useDeleteStockMutation,

  // ------------- 랭킹 -------------
  useGetRankQuery,

  // ----------- 미니게임 ------------
  usePostMiniGameBrightMutation,
  usePostMiniGameDarkMutation,

  // ------------- 마이페이지 -------------
  useLazyGetMypageQuery,
  useGetMypageQuery,
  usePostMypageMutation,
  useDeleteMypageMutation,
  usePutMypageMutation,

  // ------------- 창고 -------------
  useGetStorageQuery,
  useLazyGetStorageQuery,
  usePostStorageResaleMutation,
  // ----------- 미니게임 ------------
  usePostGotchaLevelMutation,

  // 경매장
  useGetAuctionQuery,
  useGetAuctionMyQuery,
  usePostAuctionAuctionIdMutation,
  useDeleteAuctionAuctionIdMutation,
} = Api;
