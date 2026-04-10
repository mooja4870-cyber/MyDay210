.class public final Lcom/google/crypto/tink/jwt/JwkSetConverter;
.super Ljava/lang/Object;
.source "JwkSetConverter.java"


# static fields
.field private static final JWT_ECDSA_PUBLIC_KEY_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.JwtEcdsaPublicKey"

.field private static final JWT_RSA_SSA_PKCS1_PUBLIC_KEY_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

.field private static final JWT_RSA_SSA_PSS_PUBLIC_KEY_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.JwtRsaSsaPssPublicKey"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertJwtEcdsaKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/gson/JsonObject;
    .locals 8
    .param p0, "protoKeySerialization"    # Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKeySerialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 175
    nop

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v0, "jwtEcdsaPublicKey":Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
    nop

    .line 183
    sget-object v1, Lcom/google/crypto/tink/jwt/JwkSetConverter$1;->$SwitchMap$com$google$crypto$tink$proto$JwtEcdsaAlgorithm:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 197
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unknown algorithm"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :pswitch_0
    const-string v1, "ES512"

    .line 194
    .local v1, "alg":Ljava/lang/String;
    const-string v2, "P-521"

    .line 195
    .local v2, "crv":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "crv":Ljava/lang/String;
    :pswitch_1
    const-string v1, "ES384"

    .line 190
    .restart local v1    # "alg":Ljava/lang/String;
    const-string v2, "P-384"

    .line 191
    .restart local v2    # "crv":Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "crv":Ljava/lang/String;
    :pswitch_2
    const-string v1, "ES256"

    .line 186
    .restart local v1    # "alg":Ljava/lang/String;
    const-string v2, "P-256"

    .line 187
    .restart local v2    # "crv":Ljava/lang/String;
    nop

    .line 199
    :goto_0
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 200
    .local v3, "jsonKey":Lcom/google/gson/JsonObject;
    const-string v4, "kty"

    const-string v5, "EC"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v4, "crv"

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getX()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getY()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "use"

    const-string v5, "sig"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "alg"

    invoke-virtual {v3, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 207
    .local v4, "keyOps":Lcom/google/gson/JsonArray;
    const-string v5, "verify"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 208
    const-string v5, "key_ops"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getKid(Ljava/lang/Integer;)Ljava/util/Optional;

    move-result-object v5

    .line 210
    .local v5, "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    const-string v7, "kid"

    if-eqz v6, :cond_0

    .line 211
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->hasCustomKid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getCustomKid()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1
    :goto_1
    return-object v3

    .line 178
    .end local v0    # "jwtEcdsaPublicKey":Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "crv":Ljava/lang/String;
    .end local v3    # "jsonKey":Lcom/google/gson/JsonObject;
    .end local v4    # "keyOps":Lcom/google/gson/JsonArray;
    .end local v5    # "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "failed to parse value as JwtEcdsaPublicKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertJwtRsaSsaPkcs1(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/gson/JsonObject;
    .locals 7
    .param p0, "protoKeySerialization"    # Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKeySerialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 222
    nop

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v0, "jwtRsaSsaPkcs1PublicKey":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;
    nop

    .line 230
    sget-object v1, Lcom/google/crypto/tink/jwt/JwkSetConverter$1;->$SwitchMap$com$google$crypto$tink$proto$JwtRsaSsaPkcs1Algorithm:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 241
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unknown algorithm"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :pswitch_0
    const-string v1, "RS512"

    .line 239
    .local v1, "alg":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v1    # "alg":Ljava/lang/String;
    :pswitch_1
    const-string v1, "RS384"

    .line 236
    .restart local v1    # "alg":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v1    # "alg":Ljava/lang/String;
    :pswitch_2
    const-string v1, "RS256"

    .line 233
    .restart local v1    # "alg":Ljava/lang/String;
    nop

    .line 243
    :goto_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 244
    .local v2, "jsonKey":Lcom/google/gson/JsonObject;
    const-string v3, "kty"

    const-string v4, "RSA"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getN()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getE()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "use"

    const-string v4, "sig"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "alg"

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 250
    .local v3, "keyOps":Lcom/google/gson/JsonArray;
    const-string v4, "verify"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 251
    const-string v4, "key_ops"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 252
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getKid(Ljava/lang/Integer;)Ljava/util/Optional;

    move-result-object v4

    .line 253
    .local v4, "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    const-string v6, "kid"

    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->hasCustomKid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getCustomKid()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    :goto_1
    return-object v2

    .line 225
    .end local v0    # "jwtRsaSsaPkcs1PublicKey":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "jsonKey":Lcom/google/gson/JsonObject;
    .end local v3    # "keyOps":Lcom/google/gson/JsonArray;
    .end local v4    # "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "failed to parse value as JwtRsaSsaPkcs1PublicKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertJwtRsaSsaPss(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/gson/JsonObject;
    .locals 7
    .param p0, "protoKeySerialization"    # Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKeySerialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 265
    nop

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .local v0, "jwtRsaSsaPssPublicKey":Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;
    nop

    .line 272
    sget-object v1, Lcom/google/crypto/tink/jwt/JwkSetConverter$1;->$SwitchMap$com$google$crypto$tink$proto$JwtRsaSsaPssAlgorithm:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 283
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unknown algorithm"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :pswitch_0
    const-string v1, "PS512"

    .line 281
    .local v1, "alg":Ljava/lang/String;
    goto :goto_0

    .line 277
    .end local v1    # "alg":Ljava/lang/String;
    :pswitch_1
    const-string v1, "PS384"

    .line 278
    .restart local v1    # "alg":Ljava/lang/String;
    goto :goto_0

    .line 274
    .end local v1    # "alg":Ljava/lang/String;
    :pswitch_2
    const-string v1, "PS256"

    .line 275
    .restart local v1    # "alg":Ljava/lang/String;
    nop

    .line 285
    :goto_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 286
    .local v2, "jsonKey":Lcom/google/gson/JsonObject;
    const-string v3, "kty"

    const-string v4, "RSA"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->getN()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->getE()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v3, "use"

    const-string v4, "sig"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v3, "alg"

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 292
    .local v3, "keyOps":Lcom/google/gson/JsonArray;
    const-string v4, "verify"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 293
    const-string v4, "key_ops"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 294
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getKid(Ljava/lang/Integer;)Ljava/util/Optional;

    move-result-object v4

    .line 295
    .local v4, "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    const-string v6, "kid"

    if-eqz v5, :cond_0

    .line 296
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->hasCustomKid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->getCustomKid()Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    :goto_1
    return-object v2

    .line 268
    .end local v0    # "jwtRsaSsaPssPublicKey":Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "jsonKey":Lcom/google/gson/JsonObject;
    .end local v3    # "keyOps":Lcom/google/gson/JsonArray;
    .end local v4    # "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "failed to parse value as JwtRsaSsaPssPublicKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToEcdsaKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 7
    .param p0, "jsonKey"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 446
    const-string v0, "alg"

    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "ES512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "ES384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "ES256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "crv"

    packed-switch v1, :pswitch_data_0

    .line 460
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Ecdsa Algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :pswitch_0
    const-string v0, "P-521"

    invoke-static {p0, v2, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES512:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    .line 458
    .local v0, "algorithm":Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    goto :goto_2

    .line 452
    .end local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    :pswitch_1
    const-string v0, "P-384"

    invoke-static {p0, v2, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES384:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    .line 454
    .restart local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    goto :goto_2

    .line 448
    .end local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    :pswitch_2
    const-string v0, "P-256"

    invoke-static {p0, v2, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES256:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    .line 450
    .restart local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    nop

    .line 463
    :goto_2
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    const-string v1, "kty"

    const-string v2, "EC"

    invoke-static {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateUseIsSig(Lcom/google/gson/JsonObject;)V

    .line 468
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V

    .line 470
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v1

    .line 471
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v1

    .line 473
    const-string v2, "x"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setX(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v1

    .line 474
    const-string v2, "y"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setY(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v1

    .line 475
    .local v1, "ecdsaPubKeyBuilder":Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;
    const-string v2, "kid"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    nop

    .line 477
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->newBuilder()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;->setValue(Ljava/lang/String;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    .line 476
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setCustomKid(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    .line 479
    :cond_1
    nop

    .line 481
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 479
    const-string v5, "type.googleapis.com/google.crypto.tink.JwtEcdsaPublicKey"

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v4, v6}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v2

    return-object v2

    .line 464
    .end local v1    # "ecdsaPubKeyBuilder":Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "importing ECDSA private keys is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x3f2d2e5 -> :sswitch_2
        0x3f2d701 -> :sswitch_1
        0x3f2dda8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToRsaSsaPkcs1Key(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 7
    .param p0, "jsonKey"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 350
    const-string v0, "alg"

    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "RS512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "RS384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "RS256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 361
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Rsa Algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS512:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    .line 359
    .local v0, "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;
    goto :goto_2

    .line 355
    .end local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS384:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    .line 356
    .restart local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;
    goto :goto_2

    .line 352
    .end local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    .line 353
    .restart local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;
    nop

    .line 364
    :goto_2
    const-string v1, "p"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 365
    const-string v1, "q"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    const-string v1, "dp"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    const-string v1, "dq"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    const-string v1, "qi"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    const-string v1, "kty"

    const-string v2, "RSA"

    invoke-static {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateUseIsSig(Lcom/google/gson/JsonObject;)V

    .line 374
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V

    .line 376
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 379
    const-string v2, "e"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setE(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 380
    const-string v2, "n"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setN(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 381
    .local v1, "pkcs1PubKeyBuilder":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;
    const-string v2, "kid"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    nop

    .line 383
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;

    move-result-object v3

    .line 384
    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;->setValue(Ljava/lang/String;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;

    .line 382
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setCustomKid(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    .line 387
    :cond_1
    nop

    .line 389
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 387
    const-string v5, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v4, v6}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v2

    return-object v2

    .line 370
    .end local v1    # "pkcs1PubKeyBuilder":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "importing RSA private keys is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4aa0472 -> :sswitch_2
        0x4aa088e -> :sswitch_1
        0x4aa0f35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToRsaSsaPssKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 7
    .param p0, "jsonKey"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 398
    const-string v0, "alg"

    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "PS512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "PS384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "PS256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 409
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Rsa Algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;->PS512:Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;

    .line 407
    .local v0, "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;
    goto :goto_2

    .line 403
    .end local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;->PS384:Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;

    .line 404
    .restart local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;
    goto :goto_2

    .line 400
    .end local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;->PS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;

    .line 401
    .restart local v0    # "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;
    nop

    .line 412
    :goto_2
    const-string v1, "p"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    const-string v1, "q"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 414
    const-string v1, "dq"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 415
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 417
    const-string v1, "qi"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    const-string v1, "kty"

    const-string v2, "RSA"

    invoke-static {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateUseIsSig(Lcom/google/gson/JsonObject;)V

    .line 422
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V

    .line 424
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v1

    .line 425
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v1

    .line 427
    const-string v2, "e"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;->setE(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v1

    .line 428
    const-string v2, "n"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;->setN(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v1

    .line 429
    .local v1, "pssPubKeyBuilder":Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;
    const-string v2, "kid"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    nop

    .line 431
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid$Builder;

    move-result-object v3

    .line 432
    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid$Builder;->setValue(Ljava/lang/String;)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid$Builder;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid;

    .line 430
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;->setCustomKid(Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$CustomKid;)Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;

    .line 435
    :cond_1
    nop

    .line 437
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 435
    const-string v5, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPssPublicKey"

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v4, v6}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v2

    return-object v2

    .line 418
    .end local v1    # "pssPubKeyBuilder":Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey$Builder;
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "importing RSA private keys is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x48dd570 -> :sswitch_2
        0x48dd98c -> :sswitch_1
        0x48de033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lcom/google/gson/JsonObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "name",
            "expectedValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 315
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    return-void

    .line 317
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Ljava/lang/String;
    .locals 1
    .param p0, "handle"    # Lcom/google/crypto/tink/KeysetHandle;
    .param p1, "keyAccess"    # Lcom/google/crypto/tink/tinkkey/KeyAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "keyAccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->fromPublicKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromPublicKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Ljava/lang/String;
    .locals 9
    .param p0, "handle"    # Lcom/google/crypto/tink/KeysetHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 69
    .local v0, "keys":Lcom/google/gson/JsonArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 70
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/KeysetHandle;->getAt(I)Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object v2

    .line 71
    .local v2, "entry":Lcom/google/crypto/tink/KeysetHandle$Entry;
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    if-eq v3, v4, :cond_0

    .line 72
    goto/16 :goto_4

    .line 74
    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v3

    .line 75
    .local v3, "publicKey":Lcom/google/crypto/tink/Key;
    instance-of v4, v3, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    if-eqz v4, :cond_5

    .line 78
    move-object v4, v3

    check-cast v4, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    .line 79
    .local v4, "protoKey":Lcom/google/crypto/tink/internal/LegacyProtoKey;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v5

    .line 81
    .local v5, "protoKeySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    invoke-virtual {v5}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    sget-object v7, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-eq v6, v7, :cond_2

    .line 82
    invoke-virtual {v5}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    sget-object v7, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string v7, "only OutputPrefixType RAW and TINK are supported"

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v6

    sget-object v7, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne v6, v7, :cond_4

    .line 88
    invoke-virtual {v5}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v7, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPssPublicKey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_1
    const-string v7, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :sswitch_2
    const-string v7, "type.googleapis.com/google.crypto.tink.JwtEcdsaPublicKey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :goto_2
    const/4 v6, -0x1

    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 99
    new-instance v6, Ljava/security/GeneralSecurityException;

    .line 100
    invoke-virtual {v5}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "key type %s is not supported"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :pswitch_0
    invoke-static {v5}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertJwtRsaSsaPss(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 97
    goto :goto_4

    .line 93
    :pswitch_1
    invoke-static {v5}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertJwtRsaSsaPkcs1(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 94
    goto :goto_4

    .line 90
    :pswitch_2
    invoke-static {v5}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertJwtEcdsaKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 91
    nop

    .line 69
    .end local v2    # "entry":Lcom/google/crypto/tink/KeysetHandle$Entry;
    .end local v3    # "publicKey":Lcom/google/crypto/tink/Key;
    .end local v4    # "protoKey":Lcom/google/crypto/tink/internal/LegacyProtoKey;
    .end local v5    # "protoKeySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 86
    .restart local v2    # "entry":Lcom/google/crypto/tink/KeysetHandle$Entry;
    .restart local v3    # "publicKey":Lcom/google/crypto/tink/Key;
    .restart local v4    # "protoKey":Lcom/google/crypto/tink/internal/LegacyProtoKey;
    .restart local v5    # "protoKeySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :cond_4
    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string v7, "only public keys can be converted"

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    .end local v4    # "protoKey":Lcom/google/crypto/tink/internal/LegacyProtoKey;
    .end local v5    # "protoKeySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :cond_5
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "only LegacyProtoKey is currently supported"

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    .end local v1    # "i":I
    .end local v2    # "entry":Lcom/google/crypto/tink/KeysetHandle$Entry;
    .end local v3    # "publicKey":Lcom/google/crypto/tink/Key;
    :cond_6
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 104
    .local v1, "jwkSet":Lcom/google/gson/JsonObject;
    const-string v2, "keys"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 105
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x47cdc925 -> :sswitch_2
        0x1ec6a4ca -> :sswitch_1
        0x45fdb5a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getKid(Ljava/lang/Integer;)Ljava/util/Optional;
    .locals 2
    .param p0, "idRequirement"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    if-nez p0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 168
    .local v0, "bigEndianKeyId":[B
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Lcom/google/gson/JsonObject;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toKeysetHandle(Ljava/lang/String;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .param p0, "jwkSet"    # Ljava/lang/String;
    .param p1, "keyAccess"    # Lcom/google/crypto/tink/tinkkey/KeyAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jwkSet",
            "keyAccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->toPublicKeysetHandle(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    return-object v0
.end method

.method public static toPublicKeysetHandle(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 11
    .param p0, "jwkSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jwkSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 122
    invoke-static {v0}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "jsonReader":Lcom/google/gson/stream/JsonReader;
    .local v2, "jsonKeyset":Lcom/google/gson/JsonObject;
    nop

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle;->newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    .line 127
    .local v0, "builder":Lcom/google/crypto/tink/KeysetHandle$Builder;
    const-string v3, "keys"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 128
    .local v3, "jsonKeys":Lcom/google/gson/JsonArray;
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 129
    .local v5, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 130
    .local v6, "jsonKey":Lcom/google/gson/JsonObject;
    const-string v7, "alg"

    invoke-static {v6, v7}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "algPrefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v9, "RS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v1

    goto :goto_2

    :sswitch_1
    const-string v9, "PS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :sswitch_2
    const-string v10, "ES"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :goto_1
    const/4 v9, -0x1

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 143
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected alg value: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    invoke-static {v6, v7}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :pswitch_0
    invoke-static {v6}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertToEcdsaKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v7

    .line 141
    .local v7, "keySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    goto :goto_3

    .line 137
    .end local v7    # "keySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :pswitch_1
    invoke-static {v6}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertToRsaSsaPssKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v7

    .line 138
    .restart local v7    # "keySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    goto :goto_3

    .line 134
    .end local v7    # "keySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :pswitch_2
    invoke-static {v6}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertToRsaSsaPkcs1Key(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v7

    .line 135
    .restart local v7    # "keySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    nop

    .line 146
    :goto_3
    new-instance v9, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/google/crypto/tink/internal/LegacyProtoKey;-><init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    .line 147
    invoke-static {v9}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withRandomId()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v9

    .line 146
    invoke-virtual {v0, v9}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    .line 148
    .end local v5    # "element":Lcom/google/gson/JsonElement;
    .end local v6    # "jsonKey":Lcom/google/gson/JsonObject;
    .end local v7    # "keySerialization":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .end local v8    # "algPrefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->getAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 153
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->build()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    return-object v1

    .line 150
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v4, "empty keyset"

    invoke-direct {v1, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "builder":Lcom/google/crypto/tink/KeysetHandle$Builder;
    .end local v2    # "jsonKeyset":Lcom/google/gson/JsonObject;
    .end local v3    # "jsonKeys":Lcom/google/gson/JsonArray;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "JWK set is invalid JSON"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8ae -> :sswitch_2
        0xa03 -> :sswitch_1
        0xa41 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V
    .locals 5
    .param p0, "jsonKey"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 329
    const-string v0, "key_ops"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 336
    .local v0, "keyOps":Lcom/google/gson/JsonArray;
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    return-void

    .line 343
    :cond_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected keyOps value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "key_ops is not a string"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "key_ops must contain exactly one element"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    .end local v0    # "keyOps":Lcom/google/gson/JsonArray;
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key_ops is not an array"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateUseIsSig(Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p0, "jsonKey"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 322
    const-string v0, "use"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    const-string v1, "sig"

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method
