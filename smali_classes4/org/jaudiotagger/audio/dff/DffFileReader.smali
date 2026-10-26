.class public Lorg/jaudiotagger/audio/dff/DffFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader2;
.source "DffFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;-><init>()V

    return-void
.end method

.method private buildAudioHeader(IIJIZ)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 2

    .line 200
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 202
    const-string v1, "DFF"

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    mul-int v1, p5, p2

    mul-int/2addr v1, p1

    .line 203
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 204
    invoke-virtual {v0, p5}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 205
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 206
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 207
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    long-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 208
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 209
    invoke-virtual {v0, p6}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 211
    sget-object p1, Lorg/jaudiotagger/audio/dff/DffFileReader;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Created audio header: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/nio/file/Path;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 24
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/16 v3, 0xc

    .line 26
    :try_start_0
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/dff/Frm8Chunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/Frm8Chunk;

    move-result-object v4

    if-eqz v4, :cond_14

    const/16 v4, 0x8

    .line 30
    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lorg/jaudiotagger/audio/dff/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/DsdChunk;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 39
    :cond_0
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lorg/jaudiotagger/audio/dff/PropChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/PropChunk;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v5, :cond_12

    const/4 v3, 0x4

    .line 52
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lorg/jaudiotagger/audio/dff/SndChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/SndChunk;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 72
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {v9}, Lorg/jaudiotagger/audio/dff/BaseChunk;->readIdChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/BaseChunk;

    move-result-object v9
    :try_end_1
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidChunkException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/FsChunk;

    if-eqz v10, :cond_2

    .line 83
    move-object v6, v9

    check-cast v6, Lorg/jaudiotagger/audio/dff/FsChunk;

    .line 84
    invoke-virtual {v6, v2}, Lorg/jaudiotagger/audio/dff/FsChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 87
    :cond_2
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/ChnlChunk;

    if-eqz v10, :cond_3

    .line 89
    move-object v5, v9

    check-cast v5, Lorg/jaudiotagger/audio/dff/ChnlChunk;

    .line 90
    invoke-virtual {v5, v2}, Lorg/jaudiotagger/audio/dff/ChnlChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 93
    :cond_3
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/CmprChunk;

    if-eqz v10, :cond_4

    .line 95
    check-cast v9, Lorg/jaudiotagger/audio/dff/CmprChunk;

    .line 96
    invoke-virtual {v9, v2}, Lorg/jaudiotagger/audio/dff/CmprChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 99
    :cond_4
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/DitiChunk;

    if-eqz v10, :cond_5

    .line 101
    check-cast v9, Lorg/jaudiotagger/audio/dff/DitiChunk;

    .line 102
    invoke-virtual {v9, v2}, Lorg/jaudiotagger/audio/dff/DitiChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 105
    :cond_5
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/EndChunk;

    if-eqz v10, :cond_f

    .line 107
    check-cast v9, Lorg/jaudiotagger/audio/dff/EndChunk;

    .line 108
    invoke-virtual {v9, v2}, Lorg/jaudiotagger/audio/dff/EndChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    if-eqz v5, :cond_e

    if-eqz v6, :cond_d

    if-eqz v7, :cond_7

    if-eqz v8, :cond_6

    goto :goto_1

    .line 158
    :cond_6
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dst file. Missing \'FRTE\' chunk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    if-nez v9, :cond_9

    if-eqz v7, :cond_8

    goto :goto_2

    .line 162
    :cond_8
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Missing \'DSD\' end chunk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_9
    :goto_2
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/dff/ChnlChunk;->getNumChannels()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v11

    .line 167
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/dff/FsChunk;->getSampleRate()I

    move-result v12

    if-eqz v7, :cond_a

    .line 173
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/dff/FrteChunk;->getNumFrames()I

    move-result v0

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/dff/FrteChunk;->getRate()Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    div-int/2addr v0, v3

    mul-int/2addr v0, v12

    int-to-long v3, v0

    move-wide v13, v3

    goto :goto_3

    .line 180
    :cond_a
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/dff/EndChunk;->getDataEnd()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/dff/EndChunk;->getDataStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v5, v8

    div-int/2addr v4, v11

    int-to-long v3, v4

    mul-long/2addr v5, v3

    move-wide v13, v5

    :goto_3
    if-eqz v7, :cond_b

    const/4 v1, 0x1

    :cond_b
    move/from16 v16, v1

    const/4 v15, 0x1

    move-object/from16 v10, p0

    .line 185
    invoke-direct/range {v10 .. v16}, Lorg/jaudiotagger/audio/dff/DffFileReader;->buildAudioHeader(IIJIZ)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_c

    .line 194
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_c
    return-object v0

    .line 154
    :cond_d
    :try_start_3
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Missing \'FS\' chunk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_e
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Missing \'CHNL\' chunk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_f
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/DstChunk;

    if-eqz v10, :cond_10

    .line 115
    move-object v7, v9

    check-cast v7, Lorg/jaudiotagger/audio/dff/DstChunk;

    .line 116
    invoke-virtual {v7, v2}, Lorg/jaudiotagger/audio/dff/DstChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v8}, Lorg/jaudiotagger/audio/dff/BaseChunk;->readIdChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/BaseChunk;

    move-result-object v8

    check-cast v8, Lorg/jaudiotagger/audio/dff/FrteChunk;
    :try_end_4
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidChunkException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_1

    .line 133
    :try_start_5
    invoke-virtual {v8, v2}, Lorg/jaudiotagger/audio/dff/FrteChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 127
    :catch_1
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Not a valid dft file. Missing \'FRTE\' chunk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_10
    instance-of v10, v9, Lorg/jaudiotagger/audio/dff/Id3Chunk;

    if-eqz v10, :cond_1

    .line 140
    check-cast v9, Lorg/jaudiotagger/audio/dff/Id3Chunk;

    .line 141
    invoke-virtual {v9, v2}, Lorg/jaudiotagger/audio/dff/Id3Chunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 55
    :cond_11
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Missing \'SND \'  after \'PROP\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_12
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Content does not have \'PROP\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_13
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Missing \'DSD \'  after \'FRM8\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_14
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Not a valid dff file. Content does not start with \'FRM8\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 24
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_15

    .line 194
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_4
    throw v3
.end method

.method protected getTag(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
